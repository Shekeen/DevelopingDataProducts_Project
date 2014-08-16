library(shiny)

shinyUI(fluidPage(
  titlePanel("Prices of 50,000 round cut diamonds"),
  sidebarLayout(
    sidebarPanel(
      helpText("A plot of diamonds' price against weight in carats."),
      checkboxInput("color", "Color by clarity"),
      checkboxInput("log", "Logarithmic scale"),
      a("Documentation", href="doc.html")
    ),
    mainPanel(
      plotOutput("distPlot")
    )
  )
))
