#SUMMARIZING DATA
download.file("https://data.baltimorecity.gov/api/views/k5ry-ef3g/rows.csv?accessType=DOWNLOAD",
              "restaurants.csv", method = "curl") 
restData <- read.csv("restaurants.csv")
head(restData)
