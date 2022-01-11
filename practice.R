library(XML)
fname <- "standings20190910.html"
download.file("https://legacy.baseballprospectus.com/standings/index.php?odate=2019-09-10",
              destfile=fname)
doc0 <- htmlParse(file=fname, encoding="UTF-8")
doc1 <- xmlRoot(doc0)
doc2 <- getNodeSet(doc1, "//table[@id='content']")
standings <- readHTMLTable(doc2[[1]], header=TRUE, skip.rows=1, stringsAsFactors=FALSE)
