#The R language was developed by Ross Ihaka and Robert Gentleman who were
#statisticians at the University of Auckland in New Zealand.

matrix(rep(10,8), 2,2)

x <- c(4, "a", TRUE)
class(x)

x <- list(2, "a", "b", TRUE)
class(x[[1]])

d<-read.csv("hw1_data.csv")
bad <- sum(is.na(d$Ozone))
average <-mean(d$Ozone, na.rm = TRUE)
d[["Ozone">31 & "Temp">90]]

mean(subset(d, Ozone > 31 & Temp > 90)$Solar.R, na.rm = TRUE)
mean(subset(d,Month==6)$Temp)
max(subset(d,Month==5)$Ozone, na.rm=TRUE)
x <- c(17, 14, 4, 5, 13, 12, 10)
x[x >= 11] <- 4
x
x[x > 10] <- 4
x
d[1:2,]
nrow(d)
tail(d, n=2)
d$Ozone[47]
sum(is.na(d$Ozone))
mean(d$Ozone, na.rm=TRUE)
