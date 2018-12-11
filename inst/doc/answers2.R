## ------------------------------------------------------------------------
data(bmov, package = "BristolVis")
head(bmov)

## ------------------------------------------------------------------------
plot(bmov$Length, bmov$Rating)

## ------------------------------------------------------------------------
plot(bmov$Length, bmov$Rating, xlab="Length", ylab="Rating")

## ------------------------------------------------------------------------
plot(bmov$Length, bmov$Rating, xlab="Length", ylab="Rating", ylim = c(1,10))

## ------------------------------------------------------------------------
plot(bmov$Length, bmov$Rating, xlab="Length", ylab="Rating",
     ylim = c(1,10), col = 2)

## ------------------------------------------------------------------------
plot(bmov$Length, bmov$Rating, xlab="Length", ylab="Rating",
     ylim = c(1,10), col = 2, main = "Movie rating against length")

## ------------------------------------------------------------------------
op = par(mar=c(3,3,2,1), tck=-.01, las=1, cex.axis=0.4)

## ------------------------------------------------------------------------
par(op)

## ------------------------------------------------------------------------
hist(bmov$Year)

## ------------------------------------------------------------------------
hist(bmov$Year, breaks = 15)

## ------------------------------------------------------------------------
hist(bmov$Year, breaks = 15, xlab = "Year", ylab = "Counts")

## ------------------------------------------------------------------------
hist(bmov$Year, breaks = 15, xlab = "Year", ylab = "Counts", col = 3)

## ------------------------------------------------------------------------
hist(bmov$Year, breaks = 15, xlab = "Year", ylab = "Counts", col = 3,
     main = "Histogram for years of the movies")

## ------------------------------------------------------------------------
boxplot(bmov$Rating)

## ------------------------------------------------------------------------
boxplot(bmov$Rating ~ bmov$Romance)

## ------------------------------------------------------------------------
boxplot(bmov$Rating ~ bmov$Romance + bmov$Action)

## ------------------------------------------------------------------------
# Plot a boxplot but skip the labels
boxplot(bmov$Rating ~ bmov$Romance + bmov$Action, axes=FALSE, frame.plot=TRUE, ylim=c(0,10))

# Y-axis: 0 to 10 in steps of 2.5
axis(2, at=seq(0,10,2.5))

## X-Axis, at points x=1 : x=4, 
## but with labels "non R" and "Romantic"
axis(1,at=1:4, labels=c("Non R", "Romantic", "Non A", "Action"))

