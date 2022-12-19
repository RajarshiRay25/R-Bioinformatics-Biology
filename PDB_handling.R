# Import libraries and modules

library(bio3d)
library(protr)

# load pdb

pdb_1 <- read.pdb("4R39")   # this is an object

class(pdb_1)
attributes(pdb_1)
head(pdb_1)
head(pdb_1$atom[,c("x","y","z")])   # display coordinates

View(pdb_1) # tabular content

# access atoms 
## alpha carbon selection
head(pdb_1$atom[pdb_1$calpha, c("resid", "elety", "x","y","z")])

# sequence amino acids

pdb_1$seqres

# convert into 1 letter

aa321(pdb_1$seqres)
