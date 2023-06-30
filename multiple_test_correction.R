#Script to convert raw p-values to adjusted p-values
x = ""
xlist <- strsplit(x, "\t")[[1]]
for (i in 1:length(xlist)) {
  cat(xlist[i], "\n")
}


# OPTION 1
#If p-values are stored as the only column in a text file
pval <- as.vector(unlist(read.table("p-val.txt", quote="\"", comment.char="")))

#calculate adjusted p-values using Benjamini-Hochberg ("BH") or "bonferroni", "holm", "hochberg", "hommel","BY","fdr"
padj <- p.adjust(pval,method = "BH", n = length(pval))

padjout <- matrix(padj, nrow = 1)


#output adjusted p-values to a new csv file
write.csv(padjout,file="p-adj.csv",row.names=F)



# OPTION 2
#If p-values are stored as one of the columns in a text file
pval_table <- read.table("p-val.txt", quote="\"", comment.char="")
pval <- as.vector(unlist(pval_table$V2)) #can change column # depending on where the raw p-values are stored

#calculate adjusted p-values using Benjamini-Hochberg ("BH") or "bonferroni", "holm", "hochberg", "hommel","BY","fdr"
padj <- p.adjust(pval,method = "BH", n = length(pval))

#output adjusted p-values to a new csv file
write.csv(padj,file="p-adj.csv",row.names=F)



