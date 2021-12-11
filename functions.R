###
colmean <- function(y, removeNa = TRUE){
          ncolumn <-ncol(y)
          means <- numeric(ncolumn)
          for(i in 1:ncolumn){
            means[i]<-mean(y[,i], na.rm = removeNa)
          }
          means
}
cube<-make.power(3)
square<-make.power(2)
cube(2)
square(6)
y <- 10
f<- function(x){
    y<-2
    y^2 + g(x)
}
g<- function(x){
      x*y
}
  
f(3)