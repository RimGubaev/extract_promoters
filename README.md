# extract_promoters.sh
Rim Gubaev, 2018

extract_promoters.sh is intended to extract promoter regions with required lenght. The script works well with NCBI data (i.e. fasta   and gff files). It perfectly fits for organisms with poorly annotated genomes which are basically presented by large sets of contigs. 

**Note:** the script works correct with gff files from NCBI since start position of the gene in NCBI corresponds to transcription start site.

**Required packages:**
1. [samtools](http://samtools.sourceforge.net/)
2. [bedtools](http://bedtools.readthedocs.io/en/latest/)

Email:rimgubaev@gmail.com
