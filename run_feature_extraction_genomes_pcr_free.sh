#!/bin/bash
use GridEngine8-Seq_Dev

/seq/tng/bradt/tools/qsub_standard.sh \
-m 16000 -n bradt_test_pcr_free_libraries -o /seq/tng/bradt/test_pcr_free_libraries.txt \
java -jar -Xmx16g picard-private.jar FindReadGroupDistributions \
TMP_DIR=/broad/hptmp/bradt \
O=/seq/tng/bradt/test_pcr_free_libraries \
I=/seq/picard/HK35MCCXX/C1-310_2016-02-04_2016-03-02/7/Pond-492093/HK35MCCXX.7.aligned.duplicates_marked.bam \
I=/seq/picard/HK35MCCXX/C1-310_2016-02-04_2016-03-02/4/Pond-492093/HK35MCCXX.4.aligned.duplicates_marked.bam \
I=/seq/picard/HJYN2CCXX/C1-310_2016-01-23_2016-02-29/1/Pond-492093/HJYN2CCXX.1.aligned.duplicates_marked.bam \
I=/seq/picard/HK35NCCXX/C1-310_2016-02-04_2016-03-03/1/Pond-492093/HK35NCCXX.1.aligned.duplicates_marked.bam \
I=/seq/picard/HK35NCCXX/C1-310_2016-02-04_2016-03-03/2/Pond-492093/HK35NCCXX.2.aligned.duplicates_marked.bam \
I=/seq/picard/HK35MCCXX/C1-310_2016-02-04_2016-03-02/3/Pond-492093/HK35MCCXX.3.aligned.duplicates_marked.bam \
I=/seq/picard/HK35MCCXX/C1-310_2016-02-04_2016-03-02/1/Pond-492093/HK35MCCXX.1.aligned.duplicates_marked.bam \
I=/seq/picard/HK35MCCXX/C1-310_2016-02-04_2016-03-02/6/Pond-492093/HK35MCCXX.6.aligned.duplicates_marked.bam \
I=/seq/picard/HK35MCCXX/C1-310_2016-02-04_2016-03-02/5/Pond-492093/HK35MCCXX.5.aligned.duplicates_marked.bam \
I=/seq/picard/HK35MCCXX/C1-310_2016-02-04_2016-03-02/2/Pond-492093/HK35MCCXX.2.aligned.duplicates_marked.bam \
I=/seq/picard/HK35MCCXX/C1-310_2016-02-04_2016-03-02/8/Pond-492093/HK35MCCXX.8.aligned.duplicates_marked.bam \
I=/seq/picard/HJYFJCCXX/C1-310_2016-02-04_2016-02-26/8/Pond-492093/HJYFJCCXX.8.aligned.duplicates_marked.bam \
I=/seq/picard/HJYFJCCXX/C1-310_2016-02-04_2016-02-26/6/Pond-492093/HJYFJCCXX.6.aligned.duplicates_marked.bam \
I=/seq/picard/HJYFJCCXX/C1-310_2016-02-04_2016-02-26/7/Pond-492093/HJYFJCCXX.7.aligned.duplicates_marked.bam \
I=/seq/picard/HJYFJCCXX/C1-310_2016-02-04_2016-02-26/5/Pond-492093/HJYFJCCXX.5.aligned.duplicates_marked.bam \
I=/seq/picard/HJYFJCCXX/C1-310_2016-02-04_2016-02-26/4/Pond-492093/HJYFJCCXX.4.aligned.duplicates_marked.bam \
I=/seq/picard/HK3T5CCXX/C1-310_2016-02-04_2016-03-07/8/Pond-492093/HK3T5CCXX.8.aligned.duplicates_marked.bam \
I=/seq/picard/HK3T5CCXX/C1-310_2016-02-04_2016-03-07/7/Pond-492093/HK3T5CCXX.7.aligned.duplicates_marked.bam \
I=/seq/picard/HK3T5CCXX/C1-310_2016-02-04_2016-03-07/3/Pond-492093/HK3T5CCXX.3.aligned.duplicates_marked.bam \
I=/seq/picard/HK3T5CCXX/C1-310_2016-02-04_2016-03-07/6/Pond-492093/HK3T5CCXX.6.aligned.duplicates_marked.bam \
I=/seq/picard/HK3T5CCXX/C1-310_2016-02-04_2016-03-07/1/Pond-492093/HK3T5CCXX.1.aligned.duplicates_marked.bam \
I=/seq/picard/HK3T5CCXX/C1-310_2016-02-04_2016-03-07/4/Pond-492093/HK3T5CCXX.4.aligned.duplicates_marked.bam \
I=/seq/picard/HK3T5CCXX/C1-310_2016-02-04_2016-03-07/2/Pond-492093/HK3T5CCXX.2.aligned.duplicates_marked.bam \
I=/seq/picard/HK3T5CCXX/C1-310_2016-02-04_2016-03-07/5/Pond-492093/HK3T5CCXX.5.aligned.duplicates_marked.bam \
I=/seq/picard/HK35MCCXX/C1-310_2016-02-04_2016-03-02/7/Pond-492100/HK35MCCXX.7.aligned.duplicates_marked.bam \
I=/seq/picard/HJYN2CCXX/C1-310_2016-01-23_2016-02-29/1/Pond-492100/HJYN2CCXX.1.aligned.duplicates_marked.bam \
I=/seq/picard/HK35NCCXX/C1-310_2016-02-04_2016-03-03/1/Pond-492100/HK35NCCXX.1.aligned.duplicates_marked.bam \
I=/seq/picard/HK35NCCXX/C1-310_2016-02-04_2016-03-03/2/Pond-492100/HK35NCCXX.2.aligned.duplicates_marked.bam \
I=/seq/picard/HK35MCCXX/C1-310_2016-02-04_2016-03-02/4/Pond-492100/HK35MCCXX.4.aligned.duplicates_marked.bam \
I=/seq/picard/HK35MCCXX/C1-310_2016-02-04_2016-03-02/3/Pond-492100/HK35MCCXX.3.aligned.duplicates_marked.bam \
I=/seq/picard/HK35MCCXX/C1-310_2016-02-04_2016-03-02/1/Pond-492100/HK35MCCXX.1.aligned.duplicates_marked.bam \
I=/seq/picard/HK35MCCXX/C1-310_2016-02-04_2016-03-02/6/Pond-492100/HK35MCCXX.6.aligned.duplicates_marked.bam \
I=/seq/picard/HK35MCCXX/C1-310_2016-02-04_2016-03-02/5/Pond-492100/HK35MCCXX.5.aligned.duplicates_marked.bam \
I=/seq/picard/HK35MCCXX/C1-310_2016-02-04_2016-03-02/2/Pond-492100/HK35MCCXX.2.aligned.duplicates_marked.bam \
I=/seq/picard/HK35MCCXX/C1-310_2016-02-04_2016-03-02/8/Pond-492100/HK35MCCXX.8.aligned.duplicates_marked.bam \
I=/seq/picard/HJYFJCCXX/C1-310_2016-02-04_2016-02-26/6/Pond-492100/HJYFJCCXX.6.aligned.duplicates_marked.bam \
I=/seq/picard/HJYFJCCXX/C1-310_2016-02-04_2016-02-26/7/Pond-492100/HJYFJCCXX.7.aligned.duplicates_marked.bam \
I=/seq/picard/HJYFJCCXX/C1-310_2016-02-04_2016-02-26/5/Pond-492100/HJYFJCCXX.5.aligned.duplicates_marked.bam \
I=/seq/picard/HJYFJCCXX/C1-310_2016-02-04_2016-02-26/4/Pond-492100/HJYFJCCXX.4.aligned.duplicates_marked.bam \
I=/seq/picard/HJYFJCCXX/C1-310_2016-02-04_2016-02-26/8/Pond-492100/HJYFJCCXX.8.aligned.duplicates_marked.bam \
I=/seq/picard/HK3T5CCXX/C1-310_2016-02-04_2016-03-07/8/Pond-492100/HK3T5CCXX.8.aligned.duplicates_marked.bam \
I=/seq/picard/HK3T5CCXX/C1-310_2016-02-04_2016-03-07/7/Pond-492100/HK3T5CCXX.7.aligned.duplicates_marked.bam \
I=/seq/picard/HK3T5CCXX/C1-310_2016-02-04_2016-03-07/3/Pond-492100/HK3T5CCXX.3.aligned.duplicates_marked.bam \
I=/seq/picard/HK3T5CCXX/C1-310_2016-02-04_2016-03-07/6/Pond-492100/HK3T5CCXX.6.aligned.duplicates_marked.bam \
I=/seq/picard/HK3T5CCXX/C1-310_2016-02-04_2016-03-07/1/Pond-492100/HK3T5CCXX.1.aligned.duplicates_marked.bam \
I=/seq/picard/HK3T5CCXX/C1-310_2016-02-04_2016-03-07/4/Pond-492100/HK3T5CCXX.4.aligned.duplicates_marked.bam \
I=/seq/picard/HK3T5CCXX/C1-310_2016-02-04_2016-03-07/2/Pond-492100/HK3T5CCXX.2.aligned.duplicates_marked.bam \
I=/seq/picard/HK3T5CCXX/C1-310_2016-02-04_2016-03-07/5/Pond-492100/HK3T5CCXX.5.aligned.duplicates_marked.bam