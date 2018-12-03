devtools::document()
devtools::build_vignettes()
devtools::build()
devtools::install(build_vignettes = TRUE)
library(BristolVis)

data("med")
head(med)
?med
vignette("practical1", package = "BristolVis")

install.packages("drat")
drat::addRepo("statcourses")
install.packages("BristolVis")
