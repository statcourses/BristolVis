###############################################################
######            Advanced Graphics using R              ######
#########    Osama Mahmoud (o.mahmoud@bristol.ac.uk)   ########
##############     Website: www.osmahmoud.com    ##############
#################      14 November 2019       #################

######################################
# slide 5 - Facets #####
(g = ggplot(med, aes(x=time)) + geom_histogram(aes(y=..density..), binwidth=0.2))


# slide 6 - facet_grid by rows
(g1 = g + facet_grid(gender ~ .))


# slide 7 - facet_grid by columns
(g2 = g + facet_grid(. ~ health) + scale_x_continuous(breaks = c(0, 5, 10)))


# slide 8 - facet_grid by both rows and columns
(g3 = g + facet_grid(gender ~ health) +
  theme(axis.text.x = element_text(angle = 90, hjust = 1)))


# slide 9 - facet_wrap
(g4 = ggplot(mpg, aes(x=cty)) +
    geom_histogram(binwidth=1) + facet_wrap(~class, ncol=4))
# to flip the coord ...
g4 + coord_flip()


# slide 13 - Theme examples
data(movies, package="ggplot2movies")      # load 'movies' data
(h = ggplot(movies, aes(year)) +
    geom_histogram(binwidth = 1, fill="#2b8cbe", alpha=0.6) +
    xlab("Year")+ylab("Number of movies produced"))


# slide 14 - change themes
(h1 = h + theme_bw())


# slide 15 - change themes
require(ggthemes)
(h2 = h + theme_hc(style = "darkunica"))


# slides 16:17 - define my own theme
My_theme <-
  theme(axis.text=element_text(size=10, face="bold"),
        axis.text.x=element_text(angle=20, vjust=0.5),
        axis.text.y=element_text(vjust=0.5, hjust = 0.5),
        plot.margin = unit(c(0.5,0.5,0.5,0.5), "cm"),
        axis.title=element_text(size = rel(1.2)),
        axis.title.x=element_text(vjust=-0.5),
        axis.title.y=element_text(vjust=1.5))

(h3 = h + theme_bw() + My_theme)
# or equivalently
(h3 = h1 + My_theme)