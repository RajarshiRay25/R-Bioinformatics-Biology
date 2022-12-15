# install bioconductor -- BiocManager 

install.packages("BiocManager")
BiocManager::install("Biostrings")

library(Biostrings)

# Nucleotides

seq_1 <- "GAATTCGGCTA"
seq_2 <- "GATTACCTA"

# create scoring and substitution matrix value

help("nucleotideSubstitutionMatrix")
scoringMat <- nucleotideSubstitutionMatrix(match = 2,mismatch = -1,baseOnly = TRUE)
scoringMat

# assign gap penalties

gapOpen <- 2
gapExtend <- 1

# Pairwise alignment run

help("pairwiseAlignment")
alignmentPairwise <- pairwiseAlignment(seq_1,seq_2,substitutionMatrix = scoringMat,
                                       gapOpening = gapOpen,gapExtension = gapExtend)
alignmentPairwise


# Proteins

protSeq_1 <- "PAWHEAE"
protSeq_2 <- "HEAGAWGHE"

# Scoring matrix 

data(package = "Biostrings")

prot_scoringMat <- "BLOSUM62"  

protAlignment <- pairwiseAlignment(protSeq_1,protSeq_2,substitutionMatrix = prot_scoringMat
                                   ,gapOpening = gapOpen,gapExtension = gapExtend)  


protAlignment

# DOTPLOT FOR PAIRWISE ALIGNMENT

library(seqinr)

readFasta <- read.fasta("./r_fasta_align.fasta")
readFasta[[1]]

dotPlot(readFasta[[1]],readFasta[[2]],xlab = "HUMAN",ylab = "CHIMPANZEE",col = c("white","red"))

