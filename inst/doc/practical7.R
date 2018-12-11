## ----solution, echo=FALSE, eval=FALSE------------------------------------
#  library(shiny)
#  
#  # Define UI for application that draws a histogram
#  ui <- fluidPage(
#  
#     # Application title
#     titlePanel("My own title ..."),
#  
#     # Sidebar with a slider input for number of bins
#     sidebarLayout(
#        sidebarPanel(
#           sliderInput("bins",
#                       "Number of bins:",
#                       min = 10,
#                       max = 50,
#                       value = 20)
#        ),
#  
#        # Show a plot of the generated distribution
#        mainPanel(
#           plotOutput("distPlot")
#        )
#     )
#  )
#  
#  # Define server logic required to draw a histogram
#  server <- function(input, output) {
#     output$distPlot <- renderPlot({
#        # generate bins based on input$bins from ui.R
#        data(med, package = "BristolVis")
#        x    <- med$time
#        bins <- seq(min(x), max(x), length.out = input$bins + 1)
#  
#        # draw the histogram with the specified number of bins
#        hist(x, breaks = bins, col = 'darkblue', border = 'purple',
#             main = "Histogram of time to relief",
#             xlab = "Time to relief (hours)")
#     })
#  }
#  
#  # Run the application
#  shinyApp(ui = ui, server = server)

## ---- eval=FALSE---------------------------------------------------------
#  runExample("01_hello")      # a histogram
#  runExample("02_text")       # tables and data frames
#  runExample("03_reactivity") # a reactive expression
#  runExample("04_mpg")        # global variables
#  runExample("05_sliders")    # slider bars
#  runExample("06_tabsets")    # tabbed panels
#  runExample("07_widgets")    # help text and submit buttons
#  runExample("08_html")       # Shiny app built from HTML
#  runExample("09_upload")     # file upload wizard
#  runExample("10_download")   # file download wizard
#  runExample("11_timer")      # an automated timer

## ----echo=FALSE, eval=FALSE----------------------------------------------
#  library(shiny)
#  
#  # Define UI for application that draws a histogram
#  ui <- fluidPage(
#  
#    # Application title
#    titlePanel("Pain medication data"),
#  
#    # Sidebar with a slider input for number of bins
#    sidebarLayout(
#      sidebarPanel(
#        sliderInput("bins",
#                    "Number of bins:",
#                    min = 1,
#                    max = 50,
#                    value = 30),
#  
#        hr(),
#  
#        radioButtons("col",
#                    "Histogram color:",
#                    choices = c('Red' = 'red', 'Orange' = 'orange', 'Dark green' = 'darkgreen'),
#                    selected = 'red'),
#  
#        hr(),
#  
#        checkboxInput("prop", "Plot probabilities")
#      ),
#  
#      # Show a plot of the generated distribution
#      mainPanel(
#        plotOutput("distPlot")
#      )
#    )
#  )
#  
#  # Define server logic required to draw a histogram
#  server <- function(input, output) {
#    output$distPlot <- renderPlot({
#      # generate bins based on input$bins from ui.R
#      data(med, package = "BristolVis")
#      x    <- med$time
#      bins <- seq(min(x), max(x), length.out = input$bins + 1)
#  
#      # draw the histogram with the specified number of bins
#      hist(x, breaks = bins, col = input$col, border = 'white', probability = input$prop,
#           main = "Histogram of time to relief",
#           xlab = "Time to relief (hours)")
#    })
#  }
#  
#  # Run the application
#  shinyApp(ui = ui, server = server)

