
library(dplyr)
library(magrittr)
annotations = read.table("meta/F6_CAT.promoter.1_to_1_ID_mapping.tsv", header=TRUE)

annot = dplyr::select(annotations, geneID, geneName, geneType) %>% dplyr::distinct()

write.csv(annot, "GeneID_to_GeneName.csv")
