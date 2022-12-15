# import library - seqinr

install.packages("seqinr")
library(seqinr)
choosebank()
choosebank("genbank")

# get query

HSM <- query(listname = "HSM", "SP=Homo sapiens AND AC=U61268")
attributes(HSM)

HSM$req

# sequence returns

obt_seq <- getSequence(HSM$req[[1]])
obt_seq

# tabular format of differentiated bases

table(obt_seq)

seqTable <- table(obt_seq)
View(seqTable)

# length of sequence

lenSequence <- as.integer(length(obt_seq))
message("Length of sequence : ",lenSequence)

# G-C content

contentGC <- ((seqTable[[2]] + seqTable[[3]])/lenSequence) * 100
message("G-C Content : ",contentGC)

# Working with protein sequence

myseq <- 
  "MTMDKSELVQKAKLAEQAERYDDMAAAMKAVTEQGHELSNEERNLLSVAYKNVVGARRSSWR
VISSIEQKTERNEKKQQMGKEYREKIEAELQDICNDVLELLDKYLIPNATQPESKVFYLKMK
GDYFRYLSEVASGDNKQTTVSNQQAYQEAFEISKKEMQPTHPIRLGLALNFSVFYYEILNS
PEKACSLAKTAFDEAIAELDTLNEESYKDSTLIMQLLRDNLTWTSENQGDEGENLYFQ"


myseq <- s2c(myseq)   # string to c() 
myseq

table(myseq)
