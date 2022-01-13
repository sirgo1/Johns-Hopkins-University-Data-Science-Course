install.packages("curl")
library(curl)
download.file('https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FGDP.csv',
              'Gdp.csv', method = 'curl')
download.file('https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FEDSTATS_Country.csv',
              'Edu.csv', method = 'curl')

GDP <- data.table::fread("Gdp.csv", skip = 5, nrows = 190, select = c(1, 2, 4, 5), 
             col.names =c("CountryCode", "RANK", "Economy", "Total") )
View(GDP)
EDU<- data.table::fread("Edu.csv")
which(EDU$CountryCode %in% GDP$CountryCode)
View(EDU)
nrow(GDP)
install.packages("dplyr")
library(dplyr)

mergeQ3 <- merge(GDP, EDU, by= "CountryCode")%>% arrange(desc(RANK))
mergeQ3
tail(mergeQ3)
paste(nrow(mergeQ3), "matches, 13th country is", mergeQ3$Economy[13])
View(mergeQ3)




mergeQ3 %>% group_by(`Income Group`) %>%
  filter("High income: OECD" %in% `Income Group` | "High income: nonOECD" %in% `Income Group`) %>%
  summarize(Average = mean(RANK, na.rm = T)) %>%
  arrange(desc(`Income Group`))

Q5 <- cut(mergeQ3$RANK, breaks = 5)
Q5final <- table(Q5, mergeQ3$`Income Group`)
Q5final[1, "Lower middle income"]
