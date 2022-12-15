# Install Packages - seqinr -- for sequence analysis

install.packages("seqinr")
library(seqinr)

## choose databank we want to access

choosebank()

### we will select "genbank"

choosebank("genbank")

## perform query

help(query)

HSM <- query(listname = "HSM", "SP=Homo sapiens AND AC=U61268")
attributes(HSM)

# req -- retreived query

HSM$req

# view sequence

getSeq <- getSequence(HSM$req[[1]])
getSeq

# close

closebank()

# Read a FASTA File

fasta_read <- read.fasta(file = "./cancers.fasta")  # add ">"
fasta_read

# Access FASTA

getSequence(fasta_read)  # show sequence

getName(fasta_read)   # show name

getAnnot(fasta_read)  # show annotations
