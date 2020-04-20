rm(list=ls())

# Get csv
data1 <- read.csv(file.choose(), header=F)

# Get csv
data2 <- read.table(file(), header=F, sep=",")

# Get tab delimitted file
data3 <- read.delim(file.choose(), header=F)

# Get excel data with multiple sheets
# import dataset in the top right of RStudio
# and get the import code

# Question mark gives us the function details
# ?write
write.table(data3,file="data3outputR.tsv", sep = "\t", row.names = F)
write.csv(data2, file = "data2.csv", row.names = F)

# Use csv2 for european style, where comma is decimal
# and semi colon is the seperator

head(data3)
tail(data2)

# get rows 2:15
data2[2:15, ]

# get the rest
data2[-(2:15),]


