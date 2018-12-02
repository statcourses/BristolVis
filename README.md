
<!-- README.md is generated from README.Rmd. Please edit that file -->
Introduction to data visualisation and web applications using R: Osama Mahmoud
------------------------------------------------------------------------------

[![Build Status](https://travis-ci.org/Osmahmoud/essexBigdata.svg?branch=master)](https://travis-ci.org/Osmahmoud/essexBigdata)

This page provides notes, practicals and materials of the [data visualisation course](http://www.bristol.ac.uk/medical-school/study/short-courses/Introduction-to-Data-Visualisation-and-Web-Applications-Using-R/) at the University of Bristol, January 2019.

-   PDF version of course slides: [The course slides](https://raw.githubusercontent.com/statcourses/BristolVis/master/slides.pdf) on advanced graphics using [ggplot2](https://cran.r-project.org/web/packages/ggplot2/) is made available here.

-   PDF version of course tutorial: [The course tutorial](https://raw.githubusercontent.com/statcourses/BristolVis/master/tutorial.pdf) on advanced graphics is also provided.

Installing the `BristolVis` package
-----------------------------------

The course uses a variety of data examples, R packages and practical sheets. The easiest way of downloading and installing all dependencies is first to install the R package associated with this course, named 'BristolVis'. It can be simply installed by running the following code lines into your R session.

``` r
install.packages("drat")
drat::addRepo("statcourses")
install.packages("BristolVis")
```

Usage of practicals
-------------------

The `BristolVis` package includes a number of practical files to guide learners to advanced graphics using R.

These practicals can be displayed by:

``` r
vignette("practical1", package = "BristolVis")
```

Other courses and their associated packages
-------------------------------------------

You can view the entire set of my courses from [my personal website](http://osmahmoud.com/R-courses/) or the [stat-courses website](https://statcourses.github.io/).

You can also check out the `RVis`, a web-tool for the course materials, [from here](http://bristol-medical-stat.bristol.ac.uk:3838/RVis/)
