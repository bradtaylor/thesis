use GridEngine8-Seq_Dev

/seq/tng/bradt/tools/qsub_standard.sh \
-m 16000 -n bradt_test_10_libraries -o /seq/tng/bradt/test_genomes_libraries.txt \
java -jar -Xmx16g picard-private.jar FindReadGroupDistributions \
TMP_DIR=/broad/hptmp/bradt \
O=/seq/tng/bradt/test_genomes_libraries \
I=/seq/picard/800F0ABXX/C1-202_2010-11-03_2010-11-11/2/Solexa-39434/800F0ABXX.2.aligned.duplicates_marked.bam \
I=/seq/picard/800F0ABXX/C1-202_2010-11-03_2010-11-11/3/Solexa-39434/800F0ABXX.3.aligned.duplicates_marked.bam \
I=/seq/picard/800F0ABXX/C1-202_2010-11-03_2010-11-11/4/Solexa-39434/800F0ABXX.4.aligned.duplicates_marked.bam \
I=/seq/picard/800F0ABXX/C1-202_2010-11-03_2010-11-11/1/Solexa-39434/800F0ABXX.1.aligned.duplicates_marked.bam \
I=/seq/picard/B09LNABXX/C1-58_2011-05-20_2011-05-23/1/Solexa-63371/B09LNABXX.1.aligned.duplicates_marked.bam \
I=/seq/picard/B09LNABXX/C1-58_2011-05-20_2011-05-23/1/Solexa-63374/B09LNABXX.1.aligned.duplicates_marked.bam \
I=/seq/picard/B09LNABXX/C1-58_2011-05-20_2011-05-23/1/Solexa-63373/B09LNABXX.1.aligned.duplicates_marked.bam \
I=/seq/picard/B09LNABXX/C1-58_2011-05-20_2011-05-23/1/Solexa-63372/B09LNABXX.1.aligned.duplicates_marked.bam \
I=/seq/picard/B014VACXX/C1-160_2011-06-24_2015-01-15/5/Solexa-63372/B014VACXX.5.aligned.duplicates_marked.bam \
I=/seq/picard/B014VACXX/C1-160_2011-06-24_2015-01-15/5/Solexa-63374/B014VACXX.5.aligned.duplicates_marked.bam \
I=/seq/picard/B014VACXX/C1-160_2011-06-24_2015-01-15/5/Solexa-63373/B014VACXX.5.aligned.duplicates_marked.bam \
I=/seq/picard/9004YACXX/C1-101_2011-01-05_2011-01-12/6/Solexa-43323/9004YACXX.6.aligned.duplicates_marked.bam \
I=/seq/picard/9004YACXX/C1-101_2011-01-05_2011-01-12/2/Solexa-44996/9004YACXX.2.aligned.duplicates_marked.bam \
I=/seq/picard/9004YACXX/C1-101_2011-01-05_2011-01-12/8/Solexa-43323/9004YACXX.8.aligned.duplicates_marked.bam \
I=/seq/picard/9004YACXX/C1-101_2011-01-05_2011-01-12/3/Solexa-44996/9004YACXX.3.aligned.duplicates_marked.bam \
I=/seq/picard/9004YACXX/C1-101_2011-01-05_2011-01-12/5/Solexa-43323/9004YACXX.5.aligned.duplicates_marked.bam \
I=/seq/picard/9004YACXX/C1-101_2011-01-05_2011-01-12/7/Solexa-43323/9004YACXX.7.aligned.duplicates_marked.bam \
I=/seq/picard/9004YACXX/C1-101_2011-01-05_2011-01-12/4/Solexa-44996/9004YACXX.4.aligned.duplicates_marked.bam \
I=/seq/picard/9004YACXX/C1-101_2011-01-05_2011-01-12/1/Solexa-44996/9004YACXX.1.aligned.duplicates_marked.bam \
I=/seq/picard/9005HACXX/C1-202_2010-12-23_2011-01-13/6/Solexa-39434/9005HACXX.6.aligned.duplicates_marked.bam \
I=/seq/picard/9005HACXX/C1-202_2010-12-23_2011-01-13/8/Solexa-39434/9005HACXX.8.aligned.duplicates_marked.bam \
I=/seq/picard/9005HACXX/C1-202_2010-12-23_2011-01-13/5/Solexa-39434/9005HACXX.5.aligned.duplicates_marked.bam \
I=/seq/picard/9005HACXX/C1-202_2010-12-23_2011-01-13/7/Solexa-39434/9005HACXX.7.aligned.duplicates_marked.bam \
I=/seq/picard/9005JACXX/C1-202_2010-12-23_2011-01-14/6/Solexa-43323/9005JACXX.6.aligned.duplicates_marked.bam \
I=/seq/picard/9005JACXX/C1-202_2010-12-23_2011-01-14/2/Solexa-44996/9005JACXX.2.aligned.duplicates_marked.bam \
I=/seq/picard/9005JACXX/C1-202_2010-12-23_2011-01-14/8/Solexa-43323/9005JACXX.8.aligned.duplicates_marked.bam \
I=/seq/picard/9005JACXX/C1-202_2010-12-23_2011-01-14/3/Solexa-44996/9005JACXX.3.aligned.duplicates_marked.bam \
I=/seq/picard/9005JACXX/C1-202_2010-12-23_2011-01-14/5/Solexa-43323/9005JACXX.5.aligned.duplicates_marked.bam \
I=/seq/picard/9005JACXX/C1-202_2010-12-23_2011-01-14/7/Solexa-43323/9005JACXX.7.aligned.duplicates_marked.bam \
I=/seq/picard/9005JACXX/C1-202_2010-12-23_2011-01-14/4/Solexa-44996/9005JACXX.4.aligned.duplicates_marked.bam \
I=/seq/picard/9005JACXX/C1-202_2010-12-23_2011-01-14/1/Solexa-44996/9005JACXX.1.aligned.duplicates_marked.bam \
I=/seq/picard/9007KACXX/C1-202_2011-01-05_2011-01-26/6/Solexa-39434/9007KACXX.6.aligned.duplicates_marked.bam \
I=/seq/picard/9007KACXX/C1-202_2011-01-05_2011-01-26/8/Solexa-39434/9007KACXX.8.aligned.duplicates_marked.bam \
I=/seq/picard/9007KACXX/C1-202_2011-01-05_2011-01-26/5/Solexa-39434/9007KACXX.5.aligned.duplicates_marked.bam \
I=/seq/picard/9007KACXX/C1-202_2011-01-05_2011-01-26/7/Solexa-39434/9007KACXX.7.aligned.duplicates_marked.bam