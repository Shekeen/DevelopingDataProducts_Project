library(shiny)
library(ggplot2)

shinyServer(function(input, output) {
  output$distPlot <- renderPlot({
    if (input$color & input$log) {
      p <- qplot(log(carat), log(price), data=diamonds, colour=clarity)
      print(p)
    } else if (input$color) {
      p <- qplot(carat, price, data=diamonds, colour=clarity)
      print(p)
    } else if (input$log) {
      p <- qplot(log(carat), log(price), data=diamonds)
      print(p)
    } else{
      p <- qplot(carat, price, data=diamonds)
      print(p)
    }
  })
})
