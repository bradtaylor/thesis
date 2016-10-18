#!/bin/bash
use GridEngine8-Seq_Dev

/seq/tng/bradt/tools/qsub_standard.sh \
-m 16000 -n bradt_test_10_libraries -o /seq/tng/bradt/test_wierd_libraries.txt \
java -jar -Xmx16g picard-private.jar FindReadGroupDistributions \
TMP_DIR=/broad/hptmp/bradt \
O=/seq/tng/bradt/test_weird_libraries \
I=/seq/picard/H7U86ADXX/C1-168_2014-04-17_2014-04-24/2/Pond-335195/H7U86ADXX.2.aligned.duplicates_marked.bam \
I=/seq/picard/H7U86ADXX/C1-168_2014-04-17_2014-04-24/2/Pond-335201/H7U86ADXX.2.aligned.duplicates_marked.bam \
I=/seq/picard/H7U86ADXX/C1-168_2014-04-17_2014-04-24/1/Pond-335201/H7U86ADXX.1.aligned.duplicates_marked.bam \
I=/seq/picard/H7U86ADXX/C1-168_2014-04-17_2014-04-24/1/Pond-335195/H7U86ADXX.1.aligned.duplicates_marked.bam \
I=/seq/picard/H8VJGADXX/C1-168_2014-05-04_2014-05-06/1/Pond-342622/H8VJGADXX.1.aligned.duplicates_marked.bam \
I=/seq/picard/H8VJGADXX/C1-168_2014-05-04_2014-05-06/1/Pond-342631/H8VJGADXX.1.aligned.duplicates_marked.bam \
I=/seq/picard/H8VJGADXX/C1-168_2014-05-04_2014-05-06/2/Pond-342631/H8VJGADXX.2.aligned.duplicates_marked.bam \
I=/seq/picard/H8VJGADXX/C1-168_2014-05-04_2014-05-06/2/Pond-342622/H8VJGADXX.2.aligned.duplicates_marked.bam \
I=/seq/picard/H8VFVADXX/C1-168_2014-05-04_2014-05-15/1/Pond-342622/H8VFVADXX.1.aligned.duplicates_marked.bam \
I=/seq/picard/H8VFVADXX/C1-168_2014-05-04_2014-05-15/1/Pond-342631/H8VFVADXX.1.aligned.duplicates_marked.bam \
I=/seq/picard/HAHNRADXX/C1-168_2014-09-26_2014-10-03/2/Pond-357842/HAHNRADXX.2.aligned.duplicates_marked.bam \
I=/seq/picard/HAHNRADXX/C1-168_2014-09-26_2014-10-03/2/Pond-357848/HAHNRADXX.2.aligned.duplicates_marked.bam \
I=/seq/picard/HAHNRADXX/C1-168_2014-09-26_2014-10-03/2/Pond-357846/HAHNRADXX.2.aligned.duplicates_marked.bam \
I=/seq/picard/HAHNRADXX/C1-168_2014-09-26_2014-10-03/2/Pond-357844/HAHNRADXX.2.aligned.duplicates_marked.bam \
I=/seq/picard/HAHR9ADXX/C1-168_2014-10-08_2014-10-09/2/Pond-357842/HAHR9ADXX.2.aligned.duplicates_marked.bam \
I=/seq/picard/HAHR9ADXX/C1-168_2014-10-08_2014-10-09/2/Pond-357848/HAHR9ADXX.2.aligned.duplicates_marked.bam \
I=/seq/picard/HAHR9ADXX/C1-168_2014-10-08_2014-10-09/2/Pond-357846/HAHR9ADXX.2.aligned.duplicates_marked.bam \
I=/seq/picard/HAHR9ADXX/C1-168_2014-10-08_2014-10-09/2/Pond-357844/HAHR9ADXX.2.aligned.duplicates_marked.bam \
I=/seq/picard/HAHR9ADXX/C1-168_2014-10-08_2014-10-09/1/Pond-357842/HAHR9ADXX.1.aligned.duplicates_marked.bam \
I=/seq/picard/HAHR9ADXX/C1-168_2014-10-08_2014-10-09/1/Pond-357848/HAHR9ADXX.1.aligned.duplicates_marked.bam \
I=/seq/picard/HAHR9ADXX/C1-168_2014-10-08_2014-10-09/1/Pond-357846/HAHR9ADXX.1.aligned.duplicates_marked.bam \
I=/seq/picard/HAHR9ADXX/C1-168_2014-10-08_2014-10-09/1/Pond-357844/HAHR9ADXX.1.aligned.duplicates_marked.bam \
I=/seq/picard/B00REACXX/C1-160_2011-06-10_2011-06-18/6/Pond-63707/B00REACXX.6.aligned.duplicates_marked.bam \
I=/seq/picard/B00REACXX/C1-160_2011-06-10_2011-06-18/5/Solexa-65319/B00REACXX.5.aligned.duplicates_marked.bam \
I=/seq/picard/B00REACXX/C1-160_2011-06-10_2011-06-18/7/Pond-63707/B00REACXX.7.aligned.duplicates_marked.bam \
I=/seq/picard/61PA6AAXX/C1-144_2010-06-30_2011-02-08/1/Catch-16967/61PA6AAXX.1.aligned.duplicates_marked.bam \
I=/seq/picard/61PH5AAXX/C1-144_2010-07-26_2011-05-26/5/Catch-22437/61PH5AAXX.5.aligned.duplicates_marked.bam \
I=/seq/picard/61K2NAAXX/C1-144_2010-06-16_2011-05-26/4/Catch-22533/61K2NAAXX.4.aligned.duplicates_marked.bam \
I=/seq/picard/61R28AAXX/C1-144_2010-07-27_2011-05-26/3/Catch-22437/61R28AAXX.3.aligned.duplicates_marked.bam \
I=/seq/picard/61NNGAAXX/C1-144_2010-05-12_2011-02-05/4/Catch-16967/61NNGAAXX.4.aligned.duplicates_marked.bam \
I=/seq/picard/61L11AAXX/C1-144_2010-06-14_2011-02-05/4/Catch-20139/61L11AAXX.4.aligned.duplicates_marked.bam \
I=/seq/picard/61L11AAXX/C1-144_2010-06-14_2011-02-05/8/Catch-23727/61L11AAXX.8.aligned.duplicates_marked.bam \
I=/seq/picard/61NNGAAXX/C1-144_2010-05-12_2011-02-05/8/Catch-17063/61NNGAAXX.8.aligned.duplicates_marked.bam