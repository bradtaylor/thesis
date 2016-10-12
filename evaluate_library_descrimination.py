#!/usr/bin/env python
################################################################################
# evaluate_library_discrimination.py
# 
# A test framework to evaluate the descrimination performance of library-reconstruction methods.
#
# NOTE- currently just using this script to precompute the distance matrices and dump them to a file
#       All of the analytical work will be done in ipython for now :)
#
# author: Bradt
# contact: brad.taylor3@gmail.com
# 2016
# 
# Run 
#  evaluate_library_discrimination.py -h to get usage info
# 
# Notes:
#     * Python2.7
################################################################################

from argparse import ArgumentParser
import json
from sys import maxint
from os import path

import numpy as np
import pandas as pd

# Jon Bloom distance functions and associated utilities

def normalize_by_diagonal(matrix):
    diag = np.diagonal(matrix)
    return matrix / np.sqrt(np.outer(diag, diag))

def all_pairs(table, n_groups):
    '''Returns matrix where M[i,j] is count of matching pairs of distinct reads
       from groups i and j (symmetrized).'''
    ap_matrix = np.zeros((n_groups,n_groups))
    for item in table.items():
        l = len(item[0])
        for i in xrange(l-1):
            for j in xrange(i+1,l):
                ap_matrix[item[0][i],item[0][j]] += item[1]
    return (ap_matrix + np.tril(ap_matrix.T))/2

def all_pairs_affinity(table, n_groups):
    return normalize_by_diagonal(all_pairs(table, n_groups))

def exact_tuples(table, n_groups, k):
    '''Returns array where A[i_1,...i_k] is count of read types that occur
       exactly in the groups i_1,...,i_k ascending with repeats.'''
    et_array = np.zeros(k*(n_groups,))
    for item in table.items():
        if len(item[0])==k:
            et_array[item[0]] = item[1]
    return et_array

def exact_pairs(table, n_groups):
    '''Returns matrix where M[i,j] is count of read types that occur exactly twice,
       once in group i and once in group j (symmetrized).'''
    ep_matrix = exact_tuples(table, n_groups, 2)
    return (ep_matrix + np.tril(ep_matrix.T))/2

def exact_pairs_affinity(table, n_groups):
    return normalize_by_diagonal(exact_pairs(table, n_groups))

# jaccard helper function
def overlaps(table, n_groups):
    '''Returns matrix where M[i][j] is count of read types in both groups i
       and group j (symmetrized)'''
    overlap_matrix = np.zeros((n_groups, n_groups))
    for item in table.items():
        groups = list(set(item[0]))
        l = len(groups)
        for i in xrange(0,l):
            for j in xrange(i,l):
                overlap_matrix[groups[i],groups[j]] += item[1]
    return (overlap_matrix + overlap_matrix.T) / 2

# jaccard similarity. union/intersection. might not be robust to diff conditions. no a priori expectation
def overlap_affinity(table, n_groups):
    ol_matrix = overlaps(table, n_groups)
    ol_affinity = np.zeros((n_groups, n_groups))
    for i in xrange(n_groups):
        ol_affinity[i,i] = .5
        for j in xrange(i+1,n_groups):
            ol_affinity[i,j] = 2 * ol_matrix[i,j] / \
                               (ol_matrix[i,i] + ol_matrix[j,j] - 2 * ol_matrix[i,j])
    return ol_affinity + ol_affinity.T

def inner_product(table, n_groups):
    '''Returns matrix X^t * X where X[i,j] is count of reads of type i in group j.
       Agrees with all_pairs off the diagonal.'''
    ip_matrix = np.zeros((n_groups,n_groups))
    for item in table.items():
        l = len(item[0])
        count_vector = np.zeros(n_groups)
        for i in xrange(l):
            count_vector[item[0][i]] += 1
        ip_matrix += np.outer(count_vector, count_vector) * item[1]
    return ip_matrix

# Distance in euclidean space between 2 vectrs. each RG is a vector in a space whose dimension is the number of non-zero entries in the union of observed inserts
# so, what's teh cosine fo the angle between these 2 vectors
# naturally, the diagonal elements will be 1
# cosine of angle = (A dot B) / (length A)(length B)

# BUT our data isn't in the form of these vectors. So we count the AB pairs.
# Recording each time he sees some combination of 2 numbers.

# suffers the same issue as jaccard- what is your expectation. this is why all pairs and exact pairs only viable.
def L2_affinity(table, n_groups):
    return normalize_by_diagonal(inner_product(table, n_groups))

    
def zero_diag(matrix):
    new_matrix = matrix.copy()
    for i in xrange(matrix.shape[0]):
        new_matrix[i,i] = 0
    return new_matrix


################################################################################
# Bradt new distance functions
def limited_pairs(table, n_groups, k):
    '''Returns matrix where M[i,j] is count of matching pairs of distinct reads
       from groups i and j, up to a certain read type size k (symmetrized).'''
    lp_matrix = np.zeros((n_groups,n_groups))
    for item in table.items():
        l = len(item[0])
        if l <= k:
            for i in xrange(l-1):
                for j in xrange(i+1,l):
                    lp_matrix[item[0][i],item[0][j]] += item[1]
    return (lp_matrix + np.tril(lp_matrix.T))/2


def random_pairs(table, n_groups):
    '''Returns matrix where M[i,j] is count of each read type assigned to the 
       random group i,j drawn from the larger read type (symmetrized).'''
    rp_matrix = np.zeros((n_groups, n_groups))
    faf = np.zeros((n_groups, n_groups))
    for item in table.items():#[:6]:
        tup = item[0]
        if len(tup) > 1:
            pair = np.random.choice(tup, size=2, replace=False)
            rp_matrix[min(pair), max(pair)] += item[1]
    return (rp_matrix + np.tril(rp_matrix.T))/2

def random_pairs_affinity(table, n_groups):
    return normalize_by_diagonal(random_pairs(table, n_groups))

def unlimited_affinity(table, n_groups):
    return normalize_by_diagonal(limited_pairs(table, n_groups, maxint))

def ten_limited_affinity(table, n_groups):
    return normalize_by_diagonal(limited_pairs(table, n_groups, 10))

def five_limited_affinity(table, n_groups):
    return normalize_by_diagonal(limited_pairs(table, n_groups, 5))

def four_limited_affinity(table, n_groups):
    return normalize_by_diagonal(limited_pairs(table, n_groups, 4))

def three_limited_affinity(table, n_groups):
    return normalize_by_diagonal(limited_pairs(table, n_groups, 3))

def two_limited_affinity(table, n_groups):
    return normalize_by_diagonal(limited_pairs(table, n_groups, 2))


################################################################################
# Data reading and distance calculation utilities
def read_metadata(meta_file):
    with open(meta_file, 'r') as f:
        my_json = json.loads(f.read())
    return {json.loads(key): value for (key, value) in my_json.iteritems()}

def read_table(table_file):
    with open(table_file, 'r') as f:
        # This will initially read the keys in the k:v pairs as just strings
        my_json = json.loads(f.read())
    # Convert keys string->list; but cannot hash on a list, so conver to a tuple for use in the map
    return {tuple(json.loads(key)): value for (key, value) in my_json.iteritems()}

def get_groups_and_libraries(meta):
    groups = []
    libraries = []
    for key in meta.keys():
        libraries.append(meta[key]['mAttributes']['LB'])
        groups.append(meta[key]['mReadGroupId'])
    return (groups, libraries)

def package_and_sort(matrix, groups, libraries):
    arrays = [np.array(groups), np.array(libraries)]
    df = pd.DataFrame(matrix, index=arrays, columns=arrays).sortlevel(level=1).sortlevel(level=1, axis=1)
    df.index.names=["group", "library"]
    return df

def evaluate(input_file, meta_file):
    print "Reading inputs"
    meta = read_metadata(meta_file)
    table = read_table(input_file)

    output_base = input_file.split(".")[0]

    groups, libraries = get_groups_and_libraries(meta)

    print "Calculating pairwise distances"
    print "-" * 30

    # You could pack a map of name : function and iterate over that, passing the function to zero_diag
    # But this is just faster for now 
    # print "All pairs affinity"
    # ap_affinity = package_and_sort(zero_diag(all_pairs_affinity(table, len(groups))), groups, libraries)
    # ap_affinity.to_csv(output_base + ".ap_affinity.csv")
    # print "Exact pairs affinity"
    # ep_affinity = package_and_sort(zero_diag(exact_pairs_affinity(table, len(groups))), groups, libraries)
    # ep_affinity.to_csv(output_base + ".ep_affinity.csv")
    # print "Jaccard overlap distance"
    # jaccard = package_and_sort(zero_diag(overlap_affinity(table, len(groups))), groups, libraries)
    # jaccard.to_csv(output_base + ".jaccard.csv")
    # print "Euclidean distance"
    # print "NA"#euclidean #= ???
    # # euclidean.to_csv(output_base + ".euclidean.csv")
    # print "Cosine similarity"
    # cosine = package_and_sort(zero_diag(L2_affinity(table, len(groups))), groups, libraries)
    # cosine.to_csv(output_base + ".cosine.csv")


    #bradt new ones
    print "Random pairs"
    rp_affinity = package_and_sort(zero_diag(random_pairs_affinity(table, len(groups))), groups, libraries)
    rp_affinity.to_csv(output_base + ".random.csv")
    print "Unlimited"
    ul_affinity = package_and_sort(zero_diag(unlimited_affinity(table, len(groups))), groups, libraries)
    ul_affinity.to_csv(output_base + ".unlimited.csv")
    print "Ten limit"
    ten_limit = package_and_sort(zero_diag(ten_limited_affinity(table, len(groups))), groups, libraries)
    ten_limit.to_csv(output_base + ".ten.csv")
    print "Five limit"
    five_limit = package_and_sort(zero_diag(five_limited_affinity(table, len(groups))), groups, libraries)
    five_limit.to_csv(output_base + ".five.csv")
    print "Four limit"
    four_limit = package_and_sort(zero_diag(four_limited_affinity(table, len(groups))), groups, libraries)
    four_limit.to_csv(output_base + ".four.csv")
    print "Three limit"
    three_limit = package_and_sort(zero_diag(three_limited_affinity(table, len(groups))), groups, libraries)
    three_limit.to_csv(output_base + ".three.csv")
    print "Two limit"
    two_limit = package_and_sort(zero_diag(two_limited_affinity(table, len(groups))), groups, libraries)
    two_limit.to_csv(output_base + ".two.csv")
    print "done"



def main():
    # Boilerplate to get the input files.
    parser = ArgumentParser(description="Small script to back-populate cloud.txt files.")
    parser.add_argument('TABLE', help='Table Inputs.') # TODO - better description
    parser.add_argument('METADATA', help='Metadata') # TODO - better description
    args = parser.parse_args()
    evaluate(args.TABLE, args.METADATA)

if __name__ == "__main__":
    main()