#!/bin/bash
use GridEngine8-Seq_Dev

/seq/tng/bradt/tools/qsub_standard.sh -m 16000m \
-m 16000 -n bradt_test_genomes_new_libraries -o /seq/tng/bradt/test_genomes_new_libraries.txt \
java -jar -Xmx16g picard-private.jar FindReadGroupDistributions \
TMP_DIR=/broad/hptmp/bradt \
O=/seq/tng/bradt/test_genomes_new_libraries \
I=/seq/picard/HT3HVCCXX/C1-318_2016-06-30_2016-07-03/8/NormPond-544956/HT3HVCCXX.8.aligned.duplicates_marked.bam \
