wd <- getwd()

setwd(wd)

GFF <- read.csv("genes.gff", sep = '\t', header = F)

BED <- GFF[ ,c(1,4,5,9,8,7)]

BED$V8 <- 100

BED$V9 <- gsub(".*GeneID:|;Name.*", "", BED$V9)

write.table(BED, "genes.bed", row.names = F, col.names = F, quote = F, sep = "\t")