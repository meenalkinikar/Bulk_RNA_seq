# Bulk_RNA_seq
A reproducible bulk RNA-seq analysis pipeline developed using Bash scripting for preprocessing, alignment, and gene quantification of paired-end sequencing data. The workflow includes quality control using FastQC, adapter trimming with Trimmomatic, genome alignment using HISAT2, BAM processing with SAMtools, and transcript quantification using featureCounts to generate raw gene count matrices for downstream differential expression analysis.

# Please Note
Demo fastq files of paired end data are given in "data" directory.
In the "script" directory the bash script for the pipeline is there.
Create different directories for input files and outputs for better organization. For this script to run I had created the following directories:
  -script
  -data
  -reference
  -aligned
  -counts.
Please go through the "Installation Details.txt" for download and installing all the required tools and files necessary for the pipeline.


