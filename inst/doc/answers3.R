## ------------------------------------------------------------------------
library("ggplot2")

## ------------------------------------------------------------------------
# Details of the movies dataset can be displayed by:
library(ggplot2movies)
data(movies, package="ggplot2movies")
?movies

## ----results='hide'------------------------------------------------------
str(movies)
dim(movies)
names(movies)
head(movies)

## ----cache=TRUE----------------------------------------------------------
g = ggplot(data=movies, aes(x=year))
g1 = g + geom_histogram(binwidth = 1, fill="#2b8cbe", alpha=0.6) +
  xlab("Year") + ylab("Number of movies produced") + theme_bw()

## ------------------------------------------------------------------------
g1

## ---- echo=TRUE, warning=FALSE-------------------------------------------
# create a genre variable
genre <- rep(0,nrow(movies))
for(i in 18:24)
{
  genre[movies[,i]==1] <- names(movies)[i]
}; genre[genre==0] <- "Unknown"
movies$Genre <- genre

## ---- warning=FALSE, message=FALSE---------------------------------------
clr <- c('#8dd3c7','#ffffb3','#bebada','#fb8072','#80b1d3','#fdb462','#b3de69', '#000000')

ggplot(movies, aes(x=year, fill=Genre)) + geom_histogram(binwidth=1) + scale_fill_manual(values = clr) +
  xlab("Year") + ylab("Number of movies produced") + ylim(0,1900) + xlim(1890,2005) +
  theme_bw() + 
  theme(
    legend.position =c(0.2,0.7),
    legend.background = element_blank(),
    legend.key        = element_blank(),
    panel.background  = element_blank(),
    strip.background  = element_blank(),
    panel.border      = element_blank(),
    plot.background   = element_blank(),
    axis.line         = element_blank(),
    panel.grid = element_blank()
  )

## ------------------------------------------------------------------------
ggplot(movies, aes(x=rating)) + geom_density(fill="#2b8cbe", alpha=0.6) + 
  ylab("Density of Movie Rating") + xlab("Score (out of 10)")

## ------------------------------------------------------------------------
ggplot(movies, aes(x=factor(Genre), y=rating)) + xlab("") + ylab("Rating (out of 10") +
  geom_violin(fill="red", alpha=0.4) +
  stat_summary(fun.y = median, geom='point') +
  theme_bw() +
  theme(axis.text=element_text(face='bold', size = 12, angle = 45, hjust = 1))

## ---- message=FALSE,warning=FALSE----------------------------------------
ggplot(movies, aes(x=votes, y=rating)) + xlab("Votes") + ylab("Rating") +
  stat_binhex() +
  scale_fill_gradient(low="lightblue", high="red", breaks=c(0, 1500, 3000, 5000),
                      limits=c(0, 5000))

## ----warning=FALSE,message=FALSE-----------------------------------------
ggplot(movies, aes(x=length)) +
  geom_density(fill="red", alpha=0.4) +
  xlim(0,300) + facet_wrap(~ Genre)

