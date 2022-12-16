# Load library -- Pattern matching of DNA

library(Biostrings)

# Sequence analysis

help("DNAString")

testSeq <- DNAString("TTTAATTGAATTATCATGTTAAAACTAGTTATTGTAGTCTATGATAAGCAGTTAATAATATATGTTTTCCTATTTCGACTTGATGTCACATACATTTGTAATTAATATTGACGGGTAATTTTGATATCTTAAAACTGTAATATGTAGCTTTATAAGAGTTCTATTATGTCTTTAATTTATTTGAATATTAATACATTTTC")

# We will search for a start codon - ATG --> correspond to AUG in rna 

matchPattern(DNAString("ATG"),testSeq)

# Similarly we will find stop codon - TAG --> UAG in rna

matchPattern(DNAString("TAG"),testSeq)
