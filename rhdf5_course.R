if (!requireNamespace("BiocManager", quietly = TRUE))
  install.packages("BiocManager")

BiocManager::install("rhdf5")
source("http://bioconductor.org/bioCLite.R")
library(rhdf5)
created <- h5createFile("example.h5")
created
created = h5createGroup("example.h5", "godwin")
created = h5createGroup("example.h5", "osuji")
h5ls("example.h5")
h5delete("example.h5", "foo")

A = matrix(1:10, nr=5,nc=5)
h5write(A, "example.h5", "godwin/A")
h5ls("example.h5")
df = data.frame(1L:5L, seq(0,1,length.out=5), 
                c("ab","cde","fghi","a","s"), 
                stringsAsFactors=FALSE)
h5write(df, "example.h5","df")
h5ls("example.h5")
readA = h5read("example.h5","/godwin/A")
readA
h5ls("example.h5")
df2 <- data.frame(team=rep(c("A", "B", "C"),times=4),
                 pos=rep(c(1,2,3), times=4),
                 points=round(runif(12,4,20),0))

h5write(df2,"example.h5","df2")
h5ls("example.h5") 
h5read("example.h5","/df2")


#reflection on matrix
A<-matrix(c(7,5,6,7,8,9,3,2,5,10), ncol = 5, byrow = TRUE)
colnames(A)<-c("G","B","C","D","E")
as.table(A)
