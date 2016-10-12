#!/bin/bash
use GridEngine8-Seq_Dev

/seq/tng/bradt/tools/qsub_standard.sh \
-m 16000 -n bradt_test_2_libraries -o /seq/tng/bradt/test_2_libraries.txt \
java -jar -Xmx16g picard-private.jar FindReadGroupDistributions \
TMP_DIR=/broad/hptmp/bradt \
O=/seq/tng/bradt/test_2_libraries.tabledata.json \
I=/seq/picard/HMHVHCCXX/C1-318_2016-06-24_2016-06-27/2/NexPond-544501/HMHVHCCXX.2.aligned.duplicates_marked.bam \
I=/seq/picard/HMHVHCCXX/C1-318_2016-06-24_2016-06-27/7/NexPond-544501/HMHVHCCXX.7.aligned.duplicates_marked.bam \
I=/seq/picard/HMHVHCCXX/C1-318_2016-06-24_2016-06-27/2/NexPond-544501/HMHVHCCXX.2.aligned.duplicates_marked.bam \
I=/seq/picard/HMHVHCCXX/C1-318_2016-06-24_2016-06-27/7/NexPond-544501/HMHVHCCXX.7.aligned.duplicates_marked.bam \
I=/seq/picard/HMHVHCCXX/C1-318_2016-06-24_2016-06-27/3/NexPond-544501/HMHVHCCXX.3.aligned.duplicates_marked.bam \
I=/seq/picard/HMHVHCCXX/C1-318_2016-06-24_2016-06-27/6/NexPond-544501/HMHVHCCXX.6.aligned.duplicates_marked.bam \
I=/seq/picard/HMHVHCCXX/C1-318_2016-06-24_2016-06-27/4/NexPond-544501/HMHVHCCXX.4.aligned.duplicates_marked.bam \
I=/seq/picard/HMHVHCCXX/C1-318_2016-06-24_2016-06-27/5/NexPond-544501/HMHVHCCXX.5.aligned.duplicates_marked.bam \
I=/seq/picard/HMHVHCCXX/C1-318_2016-06-24_2016-06-27/8/NexPond-544501/HMHVHCCXX.8.aligned.duplicates_marked.bam \
I=/seq/picard/HMHVHCCXX/C1-318_2016-06-24_2016-06-27/1/NexPond-544405/HMHVHCCXX.1.aligned.duplicates_marked.bam \
I=/seq/picard/HMHJYCCXX/C1-318_2016-06-23_2016-06-26/6/NexPond-544405/HMHJYCCXX.6.aligned.duplicates_marked.bam \
I=/seq/picard/HMHJYCCXX/C1-318_2016-06-23_2016-06-26/5/NexPond-544405/HMHJYCCXX.5.aligned.duplicates_marked.bam \
I=/seq/picard/HMHJYCCXX/C1-318_2016-06-23_2016-06-26/3/NexPond-544405/HMHJYCCXX.3.aligned.duplicates_marked.bam \
I=/seq/picard/HMHJYCCXX/C1-318_2016-06-23_2016-06-26/8/NexPond-544405/HMHJYCCXX.8.aligned.duplicates_marked.bam \
I=/seq/picard/HMHJYCCXX/C1-318_2016-06-23_2016-06-26/7/NexPond-544405/HMHJYCCXX.7.aligned.duplicates_marked.bam \
I=/seq/picard/HMHJYCCXX/C1-318_2016-06-23_2016-06-26/2/NexPond-544405/HMHJYCCXX.2.aligned.duplicates_marked.bam \
I=/seq/picard/HMHJYCCXX/C1-318_2016-06-23_2016-06-26/4/NexPond-544405/HMHJYCCXX.4.aligned.duplicates_marked.bam