# install and load packages

library(protr)
library(bio3d)
library(seqinr)

# load pdb

pdb_1 <- read.pdb("4CIF")
pdb_1$seqres # 3 letter code amino acids

pdb_conv <- aa321(pdb_1$seqres)
pdb_conv   # 1 letter code amino acids

# convert into vector string

pdb_conv <- c2s(pdb_conv)
pdb_conv

# extract features

extractAAC(pdb_conv)

# checck if protein has all 20 amino acids

protcheck(pdb_conv)

# check amino acid compositions

extractAPAAC(pdb_conv,props = c("Hydrophobicity", "Hydrophilicity"), 
             lambda = 30, w = 0.05, customprops = NULL )

