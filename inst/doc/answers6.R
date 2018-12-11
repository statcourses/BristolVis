## ---- eval=FALSE---------------------------------------------------------
#  data(med, package="BristolVis")

## ----med-histogram, echo=TRUE, eval=FALSE--------------------------------
#  library(BristolVis)
#  library(shiny)
#  library(ggplot2)
#  
#  data(med, package = 'BristolVis')
#  inputPanel(
#    selectInput("HistSelVar", label = "Select variable:",
#                choices = c('Age' = 'age', 'Time to effect' = 'time'), selected = 'age'),
#  
#    sliderInput("SelBin", label = "Number of bins:",
#                min = 1, max = 50, value = 6, step = 1, animate = TRUE)
#  )
#  
#  renderPlot({
#    ggplot2::ggplot(data = med, aes_string(x = input$HistSelVar)) +
#      geom_histogram(bins = input$SelBin)
#  })

## ----med-scatter, echo=TRUE, eval=FALSE----------------------------------
#  inputPanel(
#    selectInput("SelFactor", label = "Select factor",
#                choices = c('Gender' = 'gender', 'General Health' = 'health',
#                            'Treatment' = 'treatment'), selected = 'gender')
#  )
#  
#  renderPlot({
#    ggplot(data = med, aes_string(x = 'age', y = 'time')) +
#      geom_point(aes_string(colour=input$SelFactor))
#  })

## ---- echo=TRUE, eval=FALSE----------------------------------------------
#  shinyAppDir(
#    system.file("examples/01_hello", package="shiny"),
#    options=list(
#      width="100%", height=550
#    )
#  )

