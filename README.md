# Bulk_RNA_seq
A reproducible and modular bulk RNA-seq analysis pipeline for transcriptomic data processing, differential gene expression analysis, and downstream biological interpretation.

Install the following tools in you linux environment:

# FastQC:
sudo apt update
sudo apt install fastqc
To check version: fastqc --version

# Trimmomatic:
wget http://www.usadellab.org/cms/uploads/supplementary/Trimmomatic/Trimmomatic-0.39.zip
unzip Trimmomatic-0.39.zip
cd Trimmomatic-0.39/
To check version: java -jar trimmomatic-0.39.jar -version
(You can also download using conda/mamba)

# HISAT2
Demo of installation using Conda
Install Miniconda
wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh
bash Miniconda3-latest-Linux-x86_64.sh

# featureCounts
