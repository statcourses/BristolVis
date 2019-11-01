###############################################################
######                Basic Plots using R                ######
#########    Osama Mahmoud (o.mahmoud@bristol.ac.uk)   ########
##############     Website: www.osmahmoud.com    ##############
#################      14 November 2019       #################

######################################
# Slide 17 - Installing the course's R package: BristolVis
install.packages("drat")
drat::addRepo("statcourses")
install.packages("BristolVis")

# Slide 18 - overview of base graphics (scatter plot)
plot(rate ~ conc, data = Puromycin)

# Slide 19 - Change settings of the active window
par(mfrow = c(1,2), mar = c(4,4,0,0) + 0.1)   # 2 graphics juxtaposed with smaller margins than per default
x <- seq(-3,3, 0.1)
plot(x, x^2, type = 'l')
plot(x, x^3, type = 'l')

# Slide 20 - Close graphics windows
dev.off()                                     # Close active graphics window
graphics.off()                                # Close all graphics window


# Slide 22 - Histograms #####
data(birthweight, package = "BristolVis")     # read 'birthweight' data for plots

## plot
hist(birthweight$weightgain)

# with a fixed set of "bars": 'breaks' parameter represents the number of cut points
hist(birthweight$weightgain, breaks = 3, main = "Histogram of the weight gain", xlab = 'WG')   # 'main'& 'xlab' rename title and x label respectively.

# with a defined scale for the y-axis (using 'ylim' parameter)
hist(birthweight$weightgain, breaks = 3, main = "Histogram of the weight gain", xlab = 'WG', ylim = c(0, 10))

# with colored bars
hist(birthweight$weightgain, breaks = 3, main = "Histogram of the weight gain", xlab = 'WG', ylim = c(0, 10), col = gray(4:7 / 7))

# with arbitrary text - vertical alignment (srt = 90), double text size (cex = 2)
text(1500, 5, "some text", srt = 90, cex = 2)

# EXTRA - with formulas included
text(3500, 9, expression(f(x) == frac(1,alpha) ~ beta + c^2))

# EXTRA - To plot percentages - instead of frequencies
h = hist(birthweight$weightgain)
h$density = h$counts/sum(h$counts)*100
plot(h, freq = F, ylab = "Percentage")


# Slide 25 - Bar plots #####
data(med, package = "BristolVis")            # load 'med' data

# compute the frequencies using 'table()'
(treatment <- table(med$treatment))

# plot a basic bar plot
barplot(treatment, ylim = c(0, 500))

# compute the frequencies of general health Vs. treatments using 'table()'
(health_treat <- table(med$health, med$treatment))

# stacked bar plot:
barplot(health_treat, ylim = c(0, 500))

# with juxtaposed bars (use 'beside' = TRUE)
barplot(health_treat, ylim = c(0, 300), beside = TRUE)

# with legend
barplot(health_treat, ylim = c(0, 300), ylab = "number of patients", beside = TRUE, legend.text = rownames(health_treat))


# Slide 28 - Box plots #####
data(birthweight, package = "BristolVis")      # read 'birthweight' data

boxplot(birthweight$weight)

boxplot(weight ~ sex, data = birthweight)      # grouped by sex

# with new labels for sex, main title and a fixed y-scale:
boxplot(weight ~ sex, data = birthweight, names = c("girls", "boys"),
        ylab = "birth weight [g]", ylim = c(2000, 4000),
        main = "Distribution of birth weight")

# with additional line:
abline(h = 3000, col = "gray", lty = 4)


# Slide 31 - Scatter plots #####
plot(weightgain ~ weight, data = birthweight)

# for a subset
plot(weightgain ~ weight, data = birthweight, subset = (sex == "F"))

# EXTRA - add title
plot(weightgain ~ weight, data = birthweight, subset = (sex == "M"), main = "Weight gain for boys")

# EXTRA - add new label for the x-axis and y-axis
plot(weightgain ~ weight, data = birthweight, subset = (sex == "M"), main = "Weight gain for boys",
     xlab = "weight (g)", ylab = "weight gain (g)")

# Colored solid points by sex and add a legend
plot(weightgain ~ weight, data = birthweight, subset = (sex == "M"),
         main = "Weight gain (for boys and girls)",
         xlab = "weight [g]", ylab = "weight gain (g)",
         col = "blue", pch = 20, cex=2.5)

## add girls
points(weightgain ~ weight, data = birthweight, subset = (sex == "F"),
           col = "red", pch = 20, cex=2.5)

## add legend
legend("bottomleft", title = "sex", legend = c("girls", "boys"), col = c("red","blue"), pch = 20)


# Slide 33 - Examples of graphic library ####
demo(graphics) # then press enter to show examples!


# Slide 35 - Saving plots ####
pdf("Fig1.pdf", width = 10, height = 7)
boxplot(weight ~ sex, data = birthweight)
dev.off()

### EXTRA - Brief look at the advanced Graphics
library(ggplot2)

# setup the plot
g = ggplot(data = birthweight, aes(x = weight, y = weightgain)) + geom_point(aes(colour=sex))

# plot
g + scale_color_manual(values = c('red', 'blue'))
