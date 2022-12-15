# take user input of DNA sequence

rangeIn <- as.integer(readline("Enter Limit of sequence : "))
class(rangeIn)

# Make empty vector and store nucleotides in it

nset <- c()

for (cn in 1:rangeIn) {
  nBases <- readline("Enter Nucleotide Base :")
  nset[cn] <- nBases
}

print(length(nset))

# create nucleotide base counters

countA = 0
countT = 0
countG = 0
countC = 0

for (i in 1:length(nset)) {
  if(nset[i]=="A"){
    countA = countA+1
  }
  else if(nset[i]=="T"){
    countT=countT+1
  }
  else if(nset[i]=="G"){
    countG = countG+1
  }
  else if(nset[i]=="C"){
    countC = countC+1
  }
}

# Return A,T,G,C counts

message("Adenine Count : ",countA)
message("Thymine Count : ",countT)
message("Guanine Count : ",countG)
message("Cytosine Count : ",countC)

# G-C content

totalBase = countA + countT + countG + countC

contentGC = ((countG+countC)/totalBase) * 100

message("G-C Content : ",contentGC)












