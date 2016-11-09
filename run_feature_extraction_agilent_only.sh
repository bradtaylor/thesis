#!/bin/bash
use GridEngine8-Seq_Dev

/seq/tng/bradt/tools/qsub_standard.sh \
-m 16000 -n bradt_test_10_libraries -o /seq/tng/bradt/test_agilent_libraries.txt \
java -jar -Xmx16g picard-private.jar FindReadGroupDistributions \
TMP_DIR=/broad/hptmp/bradt \
O=/seq/tng/bradt/test_agilent_libraries \
I=/seq/picard/C7G4VANXX/C1-168_2015-08-29_2016-06-20/6/Pond-428365/C7G4VANXX.6.aligned.duplicates_marked.bam \
I=/seq/picard/C6PMAANXX/C1-168_2015-07-30_2015-08-04/8/Pond-428365/C6PMAANXX.8.aligned.duplicates_marked.bam \
I=/seq/picard/C6PMAANXX/C1-168_2015-07-30_2015-08-04/7/Pond-428365/C6PMAANXX.7.aligned.duplicates_marked.bam \
I=/seq/picard/C5L91ANXX/C1-168_2015-05-29_2015-06-02/4/Pond-403838/C5L91ANXX.4.aligned.duplicates_marked.bam \
I=/seq/picard/C5L91ANXX/C1-168_2015-05-29_2015-06-02/5/Pond-403838/C5L91ANXX.5.aligned.duplicates_marked.bam \
I=/seq/picard/C5L8TANXX/C1-168_2015-05-21_2015-05-25/6/Pond-403934/C5L8TANXX.6.aligned.duplicates_marked.bam \
I=/seq/picard/C5L8TANXX/C1-168_2015-05-21_2015-05-25/7/Pond-403934/C5L8TANXX.7.aligned.duplicates_marked.bam \
I=/seq/picard/C5L8TANXX/C1-168_2015-05-21_2015-05-25/4/Pond-403934/C5L8TANXX.4.aligned.duplicates_marked.bam \
I=/seq/picard/C5L8TANXX/C1-168_2015-05-21_2015-05-25/3/Pond-403934/C5L8TANXX.3.aligned.duplicates_marked.bam \
I=/seq/picard/C5L8TANXX/C1-168_2015-05-21_2015-05-25/5/Pond-403934/C5L8TANXX.5.aligned.duplicates_marked.bam \
I=/seq/picard/C5L8TANXX/C1-168_2015-05-21_2015-05-25/8/Pond-403934/C5L8TANXX.8.aligned.duplicates_marked.bam \
I=/seq/picard/C5L8TANXX/C1-168_2015-05-21_2015-05-25/2/Pond-403934/C5L8TANXX.2.aligned.duplicates_marked.bam \
I=/seq/picard/C5L8TANXX/C1-168_2015-05-21_2015-05-25/1/Pond-403934/C5L8TANXX.1.aligned.duplicates_marked.bam \
I=/seq/picard/HKY2FADXX/C1-168_2015-05-14_2015-05-15/1/Pond-403934/HKY2FADXX.1.aligned.duplicates_marked.bam \
I=/seq/picard/C5EBEANXX/C1-168_2015-05-09_2015-05-13/2/Pond-401957/C5EBEANXX.2.aligned.duplicates_marked.bam \
I=/seq/picard/C5EBEANXX/C1-168_2015-05-09_2015-05-13/6/Pond-401957/C5EBEANXX.6.aligned.duplicates_marked.bam \
I=/seq/picard/C5EBEANXX/C1-168_2015-05-09_2015-05-13/3/Pond-401957/C5EBEANXX.3.aligned.duplicates_marked.bam \
I=/seq/picard/C5EBEANXX/C1-168_2015-05-09_2015-05-13/4/Pond-401957/C5EBEANXX.4.aligned.duplicates_marked.bam \
I=/seq/picard/C5EBEANXX/C1-168_2015-05-09_2015-05-13/5/Pond-401957/C5EBEANXX.5.aligned.duplicates_marked.bam \
I=/seq/picard/C5EBEANXX/C1-168_2015-05-09_2015-05-13/8/Pond-401957/C5EBEANXX.8.aligned.duplicates_marked.bam \
I=/seq/picard/C5EBEANXX/C1-168_2015-05-09_2015-05-13/7/Pond-401957/C5EBEANXX.7.aligned.duplicates_marked.bam \
I=/seq/picard/C5L8JANXX/C1-168_2015-05-09_2015-05-13/6/Pond-401957/C5L8JANXX.6.aligned.duplicates_marked.bam \
I=/seq/picard/C5L8JANXX/C1-168_2015-05-09_2015-05-13/4/Pond-401957/C5L8JANXX.4.aligned.duplicates_marked.bam \
I=/seq/picard/C5L8JANXX/C1-168_2015-05-09_2015-05-13/7/Pond-401957/C5L8JANXX.7.aligned.duplicates_marked.bam \
I=/seq/picard/C5EHDANXX/C1-168_2015-05-09_2015-05-13/8/Pond-401957/C5EHDANXX.8.aligned.duplicates_marked.bam \
I=/seq/picard/C5L8JANXX/C1-168_2015-05-09_2015-05-13/2/Pond-401957/C5L8JANXX.2.aligned.duplicates_marked.bam \
I=/seq/picard/C5L8JANXX/C1-168_2015-05-09_2015-05-13/5/Pond-401957/C5L8JANXX.5.aligned.duplicates_marked.bam \
I=/seq/picard/C5L8JANXX/C1-168_2015-05-09_2015-05-13/1/Pond-401957/C5L8JANXX.1.aligned.duplicates_marked.bam \
I=/seq/picard/C5L8JANXX/C1-168_2015-05-09_2015-05-13/3/Pond-401957/C5L8JANXX.3.aligned.duplicates_marked.bam \
I=/seq/picard/C5L8JANXX/C1-168_2015-05-09_2015-05-13/8/Pond-401957/C5L8JANXX.8.aligned.duplicates_marked.bam \
I=/seq/picard/C5KP2ANXX/C1-168_2015-05-09_2015-05-13/1/Pond-401957/C5KP2ANXX.1.aligned.duplicates_marked.bam \
I=/seq/picard/C5KP2ANXX/C1-168_2015-05-09_2015-05-13/4/Pond-403934/C5KP2ANXX.4.aligned.duplicates_marked.bam \
I=/seq/picard/C5KP2ANXX/C1-168_2015-05-09_2015-05-13/2/Pond-403934/C5KP2ANXX.2.aligned.duplicates_marked.bam \
I=/seq/picard/C5KP2ANXX/C1-168_2015-05-09_2015-05-13/5/Pond-403934/C5KP2ANXX.5.aligned.duplicates_marked.bam \
I=/seq/picard/C5KP2ANXX/C1-168_2015-05-09_2015-05-13/6/Pond-403934/C5KP2ANXX.6.aligned.duplicates_marked.bam \
I=/seq/picard/C5KP2ANXX/C1-168_2015-05-09_2015-05-13/7/Pond-403934/C5KP2ANXX.7.aligned.duplicates_marked.bam \
I=/seq/picard/C5KP2ANXX/C1-168_2015-05-09_2015-05-13/8/Pond-403934/C5KP2ANXX.8.aligned.duplicates_marked.bam \
I=/seq/picard/C5KP2ANXX/C1-168_2015-05-09_2015-05-13/3/Pond-403934/C5KP2ANXX.3.aligned.duplicates_marked.bam \
I=/seq/picard/HJJWCADXX/C1-168_2015-05-12_2015-05-13/1/Pond-403934/HJJWCADXX.1.aligned.duplicates_marked.bam \
I=/seq/picard/HJJWCADXX/C1-168_2015-05-12_2015-05-13/2/Pond-403934/HJJWCADXX.2.aligned.duplicates_marked.bam \
I=/seq/picard/C4100ANXX/C1-168_2015-04-15_2015-12-03/2/Pond-396241/C4100ANXX.2.aligned.duplicates_marked.bam \
I=/seq/picard/C4100ANXX/C1-168_2015-04-15_2015-12-03/1/Pond-396241/C4100ANXX.1.aligned.duplicates_marked.bam
