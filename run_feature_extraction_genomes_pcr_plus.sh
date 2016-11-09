#!/bin/bash
use GridEngine8-Seq_Dev

/seq/tng/bradt/tools/qsub_standard.sh  -m 16000m \
-m 16000 -n bradt_test_pcr_plus_libraries -o /seq/tng/bradt/test_pcr_plus_libraries.txt \
java -jar -Xmx16g picard-private.jar FindReadGroupDistributions \
TMP_DIR=/broad/hptmp/bradt \
O=/seq/tng/bradt/test_pcr_plus_libraries \
I=/seq/picard/HTJCGCCXX/C1-318_2016-06-15_2016-06-18/5/NormPond-544940/HTJCGCCXX.5.aligned.duplicates_marked.bam \
I=/seq/picard/HT3GGCCXX/C1-318_2016-06-30_2016-07-03/7/NormPond-544940/HT3GGCCXX.7.aligned.duplicates_marked.bam \
I=/seq/picard/HT3GGCCXX/C1-318_2016-06-30_2016-07-03/6/NormPond-544940/HT3GGCCXX.6.aligned.duplicates_marked.bam \
I=/seq/picard/HT3GGCCXX/C1-318_2016-06-30_2016-07-03/8/NormPond-544940/HT3GGCCXX.8.aligned.duplicates_marked.bam \
I=/seq/picard/HT2V5CCXX/C1-318_2016-06-30_2016-07-03/4/NormPond-544940/HT2V5CCXX.4.aligned.duplicates_marked.bam \
I=/seq/picard/HT2V5CCXX/C1-318_2016-06-30_2016-07-03/6/NormPond-544940/HT2V5CCXX.6.aligned.duplicates_marked.bam \
I=/seq/picard/HT2V5CCXX/C1-318_2016-06-30_2016-07-03/2/NormPond-544940/HT2V5CCXX.2.aligned.duplicates_marked.bam \
I=/seq/picard/HT2V5CCXX/C1-318_2016-06-30_2016-07-03/1/NormPond-544940/HT2V5CCXX.1.aligned.duplicates_marked.bam \
I=/seq/picard/HT2V5CCXX/C1-318_2016-06-30_2016-07-03/5/NormPond-544940/HT2V5CCXX.5.aligned.duplicates_marked.bam \
I=/seq/picard/HT2V5CCXX/C1-318_2016-06-30_2016-07-03/3/NormPond-544940/HT2V5CCXX.3.aligned.duplicates_marked.bam \
I=/seq/picard/HT27VCCXX/C1-318_2016-06-30_2016-07-03/4/NormPond-544940/HT27VCCXX.4.aligned.duplicates_marked.bam \
I=/seq/picard/HT27VCCXX/C1-318_2016-06-30_2016-07-03/2/NormPond-544940/HT27VCCXX.2.aligned.duplicates_marked.bam \
I=/seq/picard/HT27VCCXX/C1-318_2016-06-30_2016-07-03/8/NormPond-544940/HT27VCCXX.8.aligned.duplicates_marked.bam \
I=/seq/picard/HT27VCCXX/C1-318_2016-06-30_2016-07-03/5/NormPond-544940/HT27VCCXX.5.aligned.duplicates_marked.bam \
I=/seq/picard/HT27VCCXX/C1-318_2016-06-30_2016-07-03/7/NormPond-544940/HT27VCCXX.7.aligned.duplicates_marked.bam \
I=/seq/picard/HT27VCCXX/C1-318_2016-06-30_2016-07-03/3/NormPond-544940/HT27VCCXX.3.aligned.duplicates_marked.bam \
I=/seq/picard/HT27VCCXX/C1-318_2016-06-30_2016-07-03/6/NormPond-544940/HT27VCCXX.6.aligned.duplicates_marked.bam \
I=/seq/picard/HT27VCCXX/C1-318_2016-06-30_2016-07-03/1/NormPond-544940/HT27VCCXX.1.aligned.duplicates_marked.bam \
I=/seq/picard/HT3HVCCXX/C1-318_2016-06-30_2016-07-03/3/NormPond-544940/HT3HVCCXX.3.aligned.duplicates_marked.bam \
I=/seq/picard/HT3HVCCXX/C1-318_2016-06-30_2016-07-03/1/NormPond-544940/HT3HVCCXX.1.aligned.duplicates_marked.bam \
I=/seq/picard/HT3HVCCXX/C1-318_2016-06-30_2016-07-03/6/NormPond-544940/HT3HVCCXX.6.aligned.duplicates_marked.bam \
I=/seq/picard/HT3HVCCXX/C1-318_2016-06-30_2016-07-03/5/NormPond-544940/HT3HVCCXX.5.aligned.duplicates_marked.bam \
I=/seq/picard/HT3HVCCXX/C1-318_2016-06-30_2016-07-03/2/NormPond-544940/HT3HVCCXX.2.aligned.duplicates_marked.bam \
I=/seq/picard/HT3HVCCXX/C1-318_2016-06-30_2016-07-03/7/NormPond-544940/HT3HVCCXX.7.aligned.duplicates_marked.bam \
I=/seq/picard/HT3HVCCXX/C1-318_2016-06-30_2016-07-03/8/NormPond-544940/HT3HVCCXX.8.aligned.duplicates_marked.bam \
I=/seq/picard/HT3HVCCXX/C1-318_2016-06-30_2016-07-03/4/NormPond-544940/HT3HVCCXX.4.aligned.duplicates_marked.bam \
I=/seq/picard/HVHJJCCXX/C1-318_2016-07-23_2016-08-08/1/NormPond-544940/HVHJJCCXX.1.aligned.duplicates_marked.bam \
I=/seq/picard/HTJCGCCXX/C1-318_2016-06-15_2016-06-18/5/NormPond-544956/HTJCGCCXX.5.aligned.duplicates_marked.bam \
I=/seq/picard/HT3GGCCXX/C1-318_2016-06-30_2016-07-03/7/NormPond-544956/HT3GGCCXX.7.aligned.duplicates_marked.bam \
I=/seq/picard/HT3GGCCXX/C1-318_2016-06-30_2016-07-03/6/NormPond-544956/HT3GGCCXX.6.aligned.duplicates_marked.bam \
I=/seq/picard/HT3GGCCXX/C1-318_2016-06-30_2016-07-03/8/NormPond-544956/HT3GGCCXX.8.aligned.duplicates_marked.bam \
I=/seq/picard/HT2V5CCXX/C1-318_2016-06-30_2016-07-03/4/NormPond-544956/HT2V5CCXX.4.aligned.duplicates_marked.bam \
I=/seq/picard/HT2V5CCXX/C1-318_2016-06-30_2016-07-03/6/NormPond-544956/HT2V5CCXX.6.aligned.duplicates_marked.bam \
I=/seq/picard/HT2V5CCXX/C1-318_2016-06-30_2016-07-03/2/NormPond-544956/HT2V5CCXX.2.aligned.duplicates_marked.bam \
I=/seq/picard/HT2V5CCXX/C1-318_2016-06-30_2016-07-03/1/NormPond-544956/HT2V5CCXX.1.aligned.duplicates_marked.bam \
I=/seq/picard/HT2V5CCXX/C1-318_2016-06-30_2016-07-03/5/NormPond-544956/HT2V5CCXX.5.aligned.duplicates_marked.bam \
I=/seq/picard/HT2V5CCXX/C1-318_2016-06-30_2016-07-03/3/NormPond-544956/HT2V5CCXX.3.aligned.duplicates_marked.bam \
I=/seq/picard/HT27VCCXX/C1-318_2016-06-30_2016-07-03/8/NormPond-544956/HT27VCCXX.8.aligned.duplicates_marked.bam \
I=/seq/picard/HT27VCCXX/C1-318_2016-06-30_2016-07-03/2/NormPond-544956/HT27VCCXX.2.aligned.duplicates_marked.bam \
I=/seq/picard/HT27VCCXX/C1-318_2016-06-30_2016-07-03/5/NormPond-544956/HT27VCCXX.5.aligned.duplicates_marked.bam \
I=/seq/picard/HT27VCCXX/C1-318_2016-06-30_2016-07-03/7/NormPond-544956/HT27VCCXX.7.aligned.duplicates_marked.bam \
I=/seq/picard/HT27VCCXX/C1-318_2016-06-30_2016-07-03/3/NormPond-544956/HT27VCCXX.3.aligned.duplicates_marked.bam \
I=/seq/picard/HT27VCCXX/C1-318_2016-06-30_2016-07-03/6/NormPond-544956/HT27VCCXX.6.aligned.duplicates_marked.bam \
I=/seq/picard/HT27VCCXX/C1-318_2016-06-30_2016-07-03/1/NormPond-544956/HT27VCCXX.1.aligned.duplicates_marked.bam \
I=/seq/picard/HT27VCCXX/C1-318_2016-06-30_2016-07-03/4/NormPond-544956/HT27VCCXX.4.aligned.duplicates_marked.bam \
I=/seq/picard/HT3HVCCXX/C1-318_2016-06-30_2016-07-03/3/NormPond-544956/HT3HVCCXX.3.aligned.duplicates_marked.bam \
I=/seq/picard/HT3HVCCXX/C1-318_2016-06-30_2016-07-03/1/NormPond-544956/HT3HVCCXX.1.aligned.duplicates_marked.bam \
I=/seq/picard/HT3HVCCXX/C1-318_2016-06-30_2016-07-03/6/NormPond-544956/HT3HVCCXX.6.aligned.duplicates_marked.bam \
I=/seq/picard/HT3HVCCXX/C1-318_2016-06-30_2016-07-03/5/NormPond-544956/HT3HVCCXX.5.aligned.duplicates_marked.bam \
I=/seq/picard/HT3HVCCXX/C1-318_2016-06-30_2016-07-03/2/NormPond-544956/HT3HVCCXX.2.aligned.duplicates_marked.bam \
I=/seq/picard/HT3HVCCXX/C1-318_2016-06-30_2016-07-03/7/NormPond-544956/HT3HVCCXX.7.aligned.duplicates_marked.bam \
I=/seq/picard/HT3HVCCXX/C1-318_2016-06-30_2016-07-03/8/NormPond-544956/HT3HVCCXX.8.aligned.duplicates_marked.bam \
I=/seq/picard/HT3HVCCXX/C1-318_2016-06-30_2016-07-03/4/NormPond-544956/HT3HVCCXX.4.aligned.duplicates_marked.bam