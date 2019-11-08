###############################################################
######              Interactive plots in R               ######
#########    Osama Mahmoud (o.mahmoud@bristol.ac.uk)   ########
##############     Website: www.osmahmoud.com    ##############
#################      15 November 2019       #################

####################################
# slide 3 - Required libraries #####

install.packages(c("ggcorrplot", "plotly"))
require(BristolVis)
require(plotly)       # To be added to BristolVis
require(ggplot2movies)
require(htmlwidgets)
require(ggcorrplot)   # To be added to BristolVis

# setup required data
data(movies, package="ggplot2movies")
movies$cat_length = cut(movies$length, c(0, 30, 60, 75, 90, 105, 120, Inf))


# slide 5 - Histograms ######
g = ggplot(data=movies, aes(x=year)) + geom_histogram(binwidth = 1, fill="#2b8cbe", alpha=0.6) +
  xlab("Year") + ylab("Number of movies produced") + theme_bw()
(Fig = ggplotly(g))

# #########################################################
# # produce plots in an external device
# pdf("Slides_source/Graphics/fig_5.pdf", width=5, height=5)
# g
# sink=dev.off()
# # system("pdfcrop Slides_source/Graphics/fig_1.pdf")
# ##########################################################


# slide 6 - density #####
g = ggplot(movies, aes(x=rating)) + geom_density(fill="#2b8cbe", alpha=0.6) + 
  ylab("Density of Movie Rating") + xlab("Score (out of 10)")
(Fig = ggplotly(g))


# slide 7 - box-plot #####
g = ggplot(movies, aes(x=factor(cat_length), y=rating)) + xlab("length") + ylab("Rating (out of 10") +
  geom_boxplot(fill="red", alpha=0.4) + theme_bw() + theme(axis.text=element_text(face='bold', size = 12, angle = 45, hjust = 1))
(Fig = ggplotly(g))



# slide 8 - violin #####
g = ggplot(movies, aes(x=factor(cat_length), y=rating)) + xlab("length") + ylab("Rating (out of 10") +
  geom_violin(fill="red", alpha=0.4) + stat_summary(fun.y = median, geom='point') + theme_bw() +
  theme(axis.text=element_text(face='bold', size = 12, angle = 45, hjust = 1))
(Fig = ggplotly(g))


# slide 9 - scatter plot #####
data(mpg, package = "ggplot2")
g = ggplot(mpg, aes(displ, hwy, colour=class)) + geom_point() + scale_color_manual(values=rainbow(7))
(Fig = ggplotly(g))


# slide 10 - save interactive plot as an html #####
htmlwidgets::saveWidget(widget = Fig, "Scatter_plot.html")


# slide 11 - Correlation matrix ######
data(mtcars)                           # load data
corr.mat <- round(cor(mtcars), 1)      # compute the correlation matrix
pval.cor <- cor_pmat(mtcars)           # compute correlation p-values

# Visualize the correlation matrix: method = "square" (default)
G1 = ggcorrplot(corr.mat)

# Interavtive plot of the correlation matrix
ggplotly(G1)

# #########################################################
# # produce plots
# pdf("Slides_source/Graphics/fig_12.pdf", width=5, height=5)
# G7
# sink=dev.off()
# # system("pdfcrop Slides_source/Graphics/fig_6.pdf")
# ##########################################################


# slide 12 - Reordering the correlation matrix: using hierarchical clustering #####
G2 = ggcorrplot(corr.mat, hc.order = TRUE)
ggplotly(G2)


# slide 13 - Types of correlogram layout: the lower triangle #####
G3 = ggcorrplot(corr.mat, hc.order = TRUE, type = "lower")
ggplotly(G3)


# slide 14 - Types of correlogram layout: the upper triangle #####
G4 = ggcorrplot(corr.mat, hc.order = TRUE, type = "upper")
ggplotly(G4)


# slide 15 - Add correlation coefficients: argument lab = TRUE ####
G5 = ggcorrplot(corr.mat, hc.order = TRUE, type = "lower", lab = TRUE)
ggplotly(G5)


# slide 16 - Add correlation significance level: Argument p.mat (highlight the non-significant coefficient)
G6 = ggcorrplot(corr.mat, hc.order = TRUE, type = "lower", p.mat = pval.cor, sig.level = 0.01, insig = "pch", pch = 4, pch.col = "black")


# slide 17 - Change colors and theme: Argument colors #####
G7 = ggcorrplot(corr.mat, hc.order = TRUE, type = "lower", outline.col = "white",
           ggtheme = ggplot2::theme_bw(), colors = c("darkgreen", "white", "blue"))
G7 = ggplotly(G7)


# slide 18 - save interactive plot as an html #####
htmlwidgets::saveWidget(widget = G7, "corr.html")