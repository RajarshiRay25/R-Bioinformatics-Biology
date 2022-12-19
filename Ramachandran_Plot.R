# The Ramachandran plot is a way to visualize the dihedral angle against of amino acid 
# residues in the protein structure. In principle, it shows the possible conformations of the 
# and angles for amino acid residue in a protein due to steric constrains. It also serves the 
# purpose of structure validation 

# import libraries and modules
install.packages("RColorBrewer")

library(bio3d)
library(protr)
library(RColorBrewer)

# read pdb file

pdb_1 <- read.pdb("4CIF")
pdb_1

# extract torsion angles 

anglesTor <- torsion.pdb(pdb_1)

# get phi and psi angles

plot(anglesTor$phi,anglesTor$psi,main = "RAMACHANDRAN PLOT - 4CIF")

# More defined graph

scatter_psi <- anglesTor$psi
scatter_phi <- anglesTor$phi

k <- 10 # define number of colours
my.cols <- rev(brewer.pal(k, "RdYlBu"))

smoothScatter(x=scatter_phi, y=scatter_psi, 
              colramp=colorRampPalette(my.cols), xlim=c(-180,180), ylim=c(-180,180),xlab="Phi", ylab="Psi", main="(B) Ramachandran plot 1BG2", pch=19, cex=0.00)

              