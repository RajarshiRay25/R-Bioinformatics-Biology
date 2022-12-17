# install and import libraries

install.packages("bio3d",dependencies = TRUE)
install.packages("protr")
BiocManager::install("muscle",force = TRUE)

library(bio3d)
library(protr)
library(muscle)

# Load up

pdb_1 <- read.pdb("4R38")
pdb_2 <- read.pdb("4R39")

# aa321() - amino acid -> 3 char to 1 char represent

pdbSeq_1 <- aa321(pdb_1$seqres)
pdbSeq_2 <- aa321(pdb_2$seqres)

# create matrix 

help("seqbind")
matPdb <- seqbind(pdbSeq_1,pdbSeq_2)

# align -- html file

alignPdb <- seqaln(matPdb,id=c("4R38","4R39"),web.args = list(email='tragicmonsteryt@gmail.com'))

aln2html(alignPdb,append = FALSE,file = "alignView.html")
