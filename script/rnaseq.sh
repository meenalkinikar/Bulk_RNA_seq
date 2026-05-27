#!/bin/bash

#Time your script
SECONDS=0

# Set your working directory
cd /mnt/d/rnaseq/

# Create 3 different folders for saving data, scripts and count (this is only for organizational purpose)

# RUN FASTQC (Quality check)
fastqc data/demo_1.fastq.gz -o data/
fastqc data/demo_2.fastq.gz -o data/

# RUN TRIMMOMATIC (adapter trimmimg)
java -jar /mnt/d/rnaseq/Trimmomatic-0.39/trimmomatic-0.39.jar SE -threads 4 data/demo_1.fastq.gz data/demo_1_trimmed.fastq TRAILING:10 -phred33
java -jar /mnt/d/rnaseq/Trimmomatic-0.39/trimmomatic-0.39.jar SE -threads 4 data/demo_2.fastq.gz data/demo_2_trimmed.fastq TRAILING:10 -phred33

echo "Trimmomatic finished running!"

# RUN FASTQC OF TRIMMED READS
fastqc data/demo_1_trimmed.fastq -o data/
fastqc data/demo_2_trimmed.fastq -o data/

# HUMAN GENOME INDEXING
# Indexed genome already provided in reference folde, but if you want to build it giving the command here. Download the latest human genome build from ensembl and perform the following command
# hisat2-build genome.fa reference/genome_index

# RUN ALIGNMENT
hisat2 -q -p 4 --rna-strandness RF -x reference/genome_index/genome_index -1 data/demo_1_trimmed.fastq -2 data/demo_2_trimmed.fastq | samtools sort -o aligned/demo_trimmed.bam

# RUN featureCounts for quantification
# use gtf
featureCounts -T 4 -p -S 2 -a reference/gtf/Homo_sapiens.GRCh38.106.gtf -o counts/demo_featurecounts.txt aligned/demo_trimmed.bam
echo "featureCounts finished running!"


cat counts/demo_featurecounts.txt | tr '\t' ',' > counts/demo_raw_counts.csv














