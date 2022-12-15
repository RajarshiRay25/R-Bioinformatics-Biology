# Obtain PUBMED package-library from CRAN

install.packages("RISmed")
library(RISmed)
help(package="RISmed")

# Load myeloma data

data(myeloma)

# See contents

str(myeloma)
summary(myeloma)

# Information

AbstractText(myeloma)    # Obtain abstract text from pubmed

Author(myeloma)         # Get author names

ArticleTitle(myeloma)   # Get article names 

ArticleId(myeloma)      # Get article ids

PMID(myeloma)          # Get PMID


# Create a query -- cancer
## EUtils -- provide access to ENTREZ Database

getCancerInfo <- EUtilsSummary(query = "cancer",type = "esearch",db = "pubmed")
str(getCancerInfo)


