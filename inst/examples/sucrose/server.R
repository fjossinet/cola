library(shiny)
library(cola)

# Define server logic required to draw a histogram
shinyServer(function(input, output) {

  # Expression that generates a histogram. The expression is
  # wrapped in a call to renderPlot to indicate that:
  #
  #  1) It is "reactive" and therefore should re-execute automatically
  #     when inputs change
  #  2) Its output type is a plot

  output$test <- renderCola({
    cola(system.file("htmlwidgets/examples/sucrose.svg", package = "cola"))
  })
})