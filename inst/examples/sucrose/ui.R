library(shiny)
library(htmlwidgets)
library(cola)

# Define UI for application that draws a histogram
shinyUI(fluidPage(

  # Application title
  titlePanel("colaR!"),

  # Sidebar with a slider input for the number of bins
  sidebarLayout(
    sidebarPanel(
    ),

    # Show a plot of the generated distribution
    mainPanel(
      colaOutput("test")
    )
  )
))