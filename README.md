# Bulk_RNA_seq

A reproducible bulk RNA-seq analysis pipeline developed using Bash scripting for preprocessing, alignment, and gene quantification of paired-end sequencing data. The workflow includes raw read quality assessment using FastQC, adapter and low-quality base trimming using Trimmomatic, post-trimming quality evaluation, genome indexing and alignment using HISAT2, BAM file sorting with SAMtools, and transcript quantification using featureCounts. The pipeline generates raw gene count matrices that can be used for downstream analyses such as differential gene expression, pathway enrichment, and functional genomics studies.

## Workflow

1. Quality assessment of raw sequencing reads using FastQC
2. Adapter and low-quality base trimming using Trimmomatic
3. Quality assessment of trimmed reads using FastQC
4. Reference genome indexing using HISAT2
5. Alignment of paired-end reads to the reference genome
6. BAM file generation and sorting using SAMtools
7. Gene-level read quantification using featureCounts
8. Export of raw count matrices for downstream analysis

## Please Note

Demo paired-end FASTQ files are provided in the `data` directory. The complete pipeline script is available in the `script` directory. For better organization, create separate directories for input files, reference files, intermediate outputs, and count matrices. The pipeline was developed using the following directory structure:

* script
* data
* reference
* aligned
* counts

Please review the `Installation Details.txt` file for instructions on downloading and installing all required tools, reference genomes, annotation files, and dependencies before running the pipeline.
