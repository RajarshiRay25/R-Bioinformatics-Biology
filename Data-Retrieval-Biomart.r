# Install packages -- from Bioconductor 

install.packages("BiocManager")
BiocManager::install("biomaRt")

library(biomaRt)
help("useMart")

## select mart for data retrieve + human gene database

retrieval <- useMart(biomart = "ensembl",dataset = "hsapiens_gene_ensembl")

## Get genes in form of list

help("getBM")
my_results <- getBM(attributes = c("hgnc_symbol"), mart = retrieval)
my_results

## Sampling few attributes

### sample genes

nGenes <- 6

getGenes <- sample(my_results$hgnc_symbol,nGenes)  ## Genes in query
getGenes


### Obtain sequence
help("getSequence")

findSequence <- getSequence(id="THEM6",type = "hgnc_symbol",seqType = "peptide",
                            mart = retrieval)

show(findSequence)
