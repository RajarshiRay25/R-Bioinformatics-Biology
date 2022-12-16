# Install packages and libraries for BLAST -- "RFLPtools"

install.packages("RFLPtools",dependencies=TRUE)
library(RFLPtools)

# Initialise + BLAST

DIR <- system.file("extdata", package = "RFLPtools")
MyFile <- file.path(DIR, "BLASTexample.txt")

MyBLAST <- read.blast(file = MyFile)    # BLAST Perform
MyBLAST

head(MyBLAST)

# View contents of BLAST

View(MyBLAST)
