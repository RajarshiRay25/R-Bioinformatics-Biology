# Install packages and library -- ape

install.packages("ape")
library(ape)

# Input sequences as term of IDs

seqID <- c("U15717", "U15718", "U15719", "U15720", "U15721", 
           "U15722", "U15723", "U15724")

# Fetch sequence from genbank

fetchSeq <- read.GenBank(seqID)
fetchSeq

# Calculate distance matrix

distSeq <- dist.dna(fetchSeq)
distSeq

# Create phylo object

phyloTriangle <- triangMtd(distSeq)
phyloTriangle

plot(phyloTriangle, type="phylogram", edge.color="red", cex=1, edge.width=1,main="(A) Phylogram")
