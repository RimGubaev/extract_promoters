#Set working directory
wd <- getwd()
setwd(wd)

#Read gff file to be modified 
GFF <- read.csv("genes.gff", sep = '\t', header = F)

#Make bed file
BED <- GFF[ ,c(1,4,5,9,8,7)]

#Set the 
BED$V8 <- 100

#Add gene names to bed file
BED$V9 <- gsub(".*GeneID:|;Name.*", "", BED$V9)

# write output table
write.table(BED, "genes.bed", row.names = F, col.names = F, quote = F, sep = "\t")
