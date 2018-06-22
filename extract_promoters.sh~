#!/bin/bash

set -eu -o pipefail

# Reading required data 
echo Enter required lenght for promoter region

read var

echo Enter fasta file name located in working directory 
echo For example: Nt_example.fa

read var1

echo Enter gff file name located in working directory
echo For example: Nt_example.gff  

read var2

# Extract information for genes from input gff file
awk '/gbkey=Gene/' $var2 > genes.gff

# Run R script to convert gff to bed format
Rscript gff2bed.r

#Generate index for fasta file, details are here: http://www.htslib.org/doc/samtools.html
samtools faidx $var1

#Create a table (from index file) that contains contig/chromosome sizes
cut -f1-2 ${var1}.fai > sizes.chr

#Create bed file that contains locations of promoters
bedtools flank -i genes.bed -g sizes.chr -l $var -r 0 -s > promoters.bed

#Extract promoter regions from fasta file with contigs/chromosomes using bed file
bedtools getfasta -s -fi $var1 -bed promoters.bed -fo promoters.fa -name

echo Results are in promoters.fa file

#Count promoters
result=$(grep -c '^>' promoters.fa)

echo Number of obtained promoters: $result
