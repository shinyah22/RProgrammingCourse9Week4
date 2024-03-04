#
# This is the server logic of a Shiny web application. You can run the
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    https://shiny.posit.co/
#
library(shiny)

# Define server logic
server <- function(input, output) {
  
  # Reactive expression to predict MPG based on inputs
  predictedMPG <- reactive({
    # Simple model to predict MPG (This is a placeholder. In a real app, you would use a regression model or another predictive model based on actual data)
    mpg <- 30 - (input$cylinders * 2) + (input$horsepower / 100) - (input$weight / 2)
    
    # Return the predicted MPG
    return(mpg)
  })
  
  # Output the predicted MPG
  output$predictedMPG <- renderText({
    paste("Estimated MPG: ", round(predictedMPG(), digits = 2))
  })
}
