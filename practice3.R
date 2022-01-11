install.packages("sqldf")
library(sqldf)
download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Fss06pid.csv",
              "number2.csv", method = "curl")
acs <- read.csv("number2.csv")              
head(acs)
library(RMySQL)
detach("package:RMySQL", unload=TRUE)

sqldf("select pwgtp1 from acs where AGEP < 50")
unique(acs$AGEP)
sqldf("select distinct AGEP from acs")

htmlUrl <- url("http://biostat.jhsph.edu/~jleek/contact.html")
htmlCode <- readLines(htmlUrl)
close(htmlUrl)
c(nchar(htmlCode[10]),nchar(htmlCode[20]),nchar(htmlCode[30]),nchar(htmlCode[100]) )
str(read.fwf)
?read.fwf
fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fwksst8110.for"
SST <- read.fwf(fileUrl, skip=4, widths=c(12, 7, 4, 9, 4, 9, 4, 9, 4))
head(SST)
sum(SST[,4])
