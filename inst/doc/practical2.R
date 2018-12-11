## ------------------------------------------------------------------------
data(bmov, package = "BristolVis")
head(bmov)

## ----echo=FALSE, eval=FALSE----------------------------------------------
#  plot(bmov$Length, bmov$Rating)

## ----echo=FALSE, eval=FALSE----------------------------------------------
#  plot(bmov$Length, bmov$Rating, xlab="Length", ylab="Rating")

## ----echo=FALSE, eval=FALSE----------------------------------------------
#  plot(bmov$Length, bmov$Rating, xlab="Length", ylab="Rating", ylim = c(1,10))

## ----echo=FALSE, eval=FALSE----------------------------------------------
#  plot(bmov$Length, bmov$Rating, xlab="Length", ylab="Rating",
#       ylim = c(1,10), col = 2)

## ----echo=FALSE, eval=FALSE----------------------------------------------
#  plot(bmov$Length, bmov$Rating, xlab="Length", ylab="Rating",
#       ylim = c(1,10), col = 2, main = "Movie rating against length")

## ------------------------------------------------------------------------
op = par(mar=c(3,3,2,1), tck=-.01, las=1, cex.axis=0.4)

## ------------------------------------------------------------------------
par(op)

## ----echo=FALSE, eval=FALSE----------------------------------------------
#  hist(bmov$Year)

## ----echo=FALSE, eval=FALSE----------------------------------------------
#  hist(bmov$Year, breaks = 15)

## ----echo=FALSE, eval=FALSE----------------------------------------------
#  hist(bmov$Year, breaks = 15, xlab = "Year", ylab = "Counts")

## ----echo=FALSE, eval=FALSE----------------------------------------------
#  hist(bmov$Year, breaks = 15, xlab = "Year", ylab = "Counts", col = 3)

## ----echo=FALSE, eval=FALSE----------------------------------------------
#  hist(bmov$Year, breaks = 15, xlab = "Year", ylab = "Counts", col = 3,
#       main = "Histogram for years of the movies")

## ----echo=FALSE, eval=FALSE----------------------------------------------
#  boxplot(bmov$Rating)

## ----echo=FALSE, eval=FALSE----------------------------------------------
#  boxplot(bmov$Rating ~ bmov$Romance)

## ----echo=FALSE, eval=FALSE----------------------------------------------
#  boxplot(bmov$Rating ~ bmov$Romance + bmov$Action)

