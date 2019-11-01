###############################################################
######            Advanced Graphics using R              ######
#########    Osama Mahmoud (o.mahmoud@bristol.ac.uk)   ########
##############     Website: www.osmahmoud.com    ##############
#################      14 November 2019       #################

######################################
# Slide 3 - install the `ggplot2' package - if needed:
install.packages("ggplot2")

#  load required library and data
library(BristolVis)
data(med, package="BristolVis")


# Slide 8 -  A basic plot using base graphics ####
plot(med[med$health=="Poor",]$age, med[med$health=="Poor",]$time,
     xlim=c(30,72), ylim=c(0.5,13))

points(med[med$health=="Fair",]$age, med[med$health=="Fair",]$time, col=2)
points(med[med$health=="Good",]$age, med[med$health=="Good",]$time, col=4)


# Slide 10 - Equivalent graphics using ggplot2 ####
library(ggplot2)
g = ggplot(data=med, aes(x=age, y=time))
(p = g + geom_point(aes(colour=health)))


# Slide 11 - points size using health ####
(p = g + geom_point(aes(size=health)))


# Slide 12 - a line chart ####
(p = g + geom_line(aes(colour=health, size = health)))


# Slide 14 - more complicated functions using stat ####
data(mpg, package = "ggplot2")
head(mpg)
(p = ggplot(mpg, aes(x = displ, y = cty)) +
  geom_point(aes(colour=factor(cyl))) +
  stat_smooth(aes(colour=factor(cyl))))


# slide 16 - ggplot philosophy
g + geom_point(aes(colour=health))

# The previous command actually calls (in background) the following:
g + layer(data = med, #inherited
          mapping = aes(color=health), #x and y are inherited.
          stat = "identity",
          geom = "point",
          position = "identity",
          params = list(na.rm=FALSE))


# slide 18 - initial plot object
g = ggplot(data=mpg, mapping=aes(x=displ, y=cty, colour=factor(cyl)))


# slide 19 - show all geom_ functions
ggplot2:::.all_aesthetics # show all aesthetics in the ggplot2


# slides 21:23 - combining geoms ####
g = ggplot(mpg, aes(x=cyl, y=hwy))
(g1 = g + geom_boxplot())
(g2 = g + geom_boxplot(aes(x=factor(cyl),group=cyl)))
(g3 = g2 + geom_dotplot(aes(x=factor(cyl), group=cyl),
                        binaxis="y", stackdir="center",
                        binwidth=0.25, stackratio=2))


# slide 25 - standard plots
# Ex. bar plots ####
(h = ggplot(med, aes(x=status)) + geom_bar())


# slide 26 - standard plots
# Ex. raster plot ####
(g_rast = ggplot(med, aes(gender, health)) +
    geom_raster(aes(fill=time)))