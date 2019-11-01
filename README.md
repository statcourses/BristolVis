
<!-- README.md is generated from README.Rmd. Please edit that file -->
Introduction to data visualisation using R: Osama Mahmoud
---------------------------------------------------------

[![Build Status](https://travis-ci.org/statcourses/BristolVis.svg?branch=master)](https://travis-ci.org/statcourses/BristolVis)

This page provides practicals and materials of the [data visualisation course](http://www.bristol.ac.uk/medical-school/study/short-courses/Introduction-to-Data-Visualisation-and-Web-Applications-Using-R/) held at the University of Bristol, November 2019.

Course Materials:
-----------------

-   PDF files of course slides:
    -   [Inroduction to R](https://raw.githubusercontent.com/statcourses/BristolVis/master/PDF_Slides/Intro_to_R.pdf).
    -   [Base graphics](https://raw.githubusercontent.com/statcourses/BristolVis/master/PDF_Slides/03_Base_graphics.pdf)
    -   [Advanced graphics](https://raw.githubusercontent.com/statcourses/BristolVis/master/PDF_Slides/05_Advanced_graphics.pdf)
    -   [More on advanced graphics](https://raw.githubusercontent.com/statcourses/BristolVis/master/PDF_Slides/07_More_on_Advanced_graphics.pdf).
-   R scripts of the course slides:
    -   [R script for inroduction to R](https://raw.githubusercontent.com/statcourses/BristolVis/master/R_Scripts/Rscript_Intro-R.R).
    -   [R script for base graphics](https://raw.githubusercontent.com/statcourses/BristolVis/master/R_Scripts/Rscript_base-graphics.R)
    -   [R script for advanced graphics](https://raw.githubusercontent.com/statcourses/BristolVis/master/R_Scripts/Rscript_advanced-graphics.R)
    -   [R script for more on advanced graphics](https://raw.githubusercontent.com/statcourses/BristolVis/master/R_Scripts/Rscript_more_on_advanced-graphics.R).
-   Practical exercises:
    -   [Inroduction to R](https://raw.githubusercontent.com/statcourses/BristolVis/master/Practical_Exercises/practical%201%20-%20IntroR.pdf).
    -   [Base graphics](https://raw.githubusercontent.com/statcourses/BristolVis/master/Practical_Exercises/Practical%202%20-%20Base%20graphics.pdf)
    -   [Advanced graphics](https://raw.githubusercontent.com/statcourses/BristolVis/master/Practical_Exercises/Practical%203%20-%20Advanced%20graphics.pdf)
    -   [More on advanced graphics](https://raw.githubusercontent.com/statcourses/BristolVis/master/Practical_Exercises/Practical%204%20-%20More%20on%20advanced%20graphics.pdf).
-   Other useful materilas:
    -   R reference card for `Introduction to R`: The [R reference card](https://raw.githubusercontent.com/statcourses/BristolVis/master/Other_Materials/Refcard_IntroR.pdf) summarises some useful basic commands, concepts and functions.
    -   R studio cheat sheet for `ggplot2`: The R studio [cheat sheet](https://raw.githubusercontent.com/statcourses/BristolVis/master/Other_Materials/ggplot2-cheatsheet.pdf) for the ggplot2 functions is included.

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
vignette("prac_base", package = "BristolVis")
vignette("prac_advanced", package = "BristolVis")
vignette("prac_AdvMore", package = "BristolVis")
```

The course web-tool
-------------------

I have designed a web-tool, named `RVis`, to help me delivering this course. It enables exploring the training data sets, generating graphics, presenting summary results in an interactive way. You can [check it out from here](http://bristol-medical-stat.bristol.ac.uk:3838/RVis/).

Other courses and their associated packages
-------------------------------------------

You can view the entire set of my courses from [my personal website](http://osmahmoud.com/R-courses/) or the [stat-courses website](https://statcourses.github.io/).

Feedback on the courses delivered at the University of Essex
------------------------------------------------------------

If you have attended any of the R courses delivered at the University of Essex on 19 October and 2 November 2019, please kindly fill [this feedback form](https://forms.gle/n2Aexgv8suJfp7wJA).
