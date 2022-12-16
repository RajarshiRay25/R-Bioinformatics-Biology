# Bug fix : http://web.mit.edu/~r/current/arch/i386_linux26/lib/R/library/Biostrings/html/XStringSet-io.htmlz


# Install library

install.packages("BiocManager")
install.packages("seqinr")
BiocManager::install("muscle")
library(muscle)
library(seqinr)

# Read FASTA 

readSeq <- read.fasta("MSA.fasta")
readSeq
## convert to DNA Stringset for working
newSeq <- readDNAStringSet(filepath = "./MSA.fasta",format = "fasta")

# Perform MSA 

MSA <- muscle(newSeq,quiet = FALSE)
MSA










