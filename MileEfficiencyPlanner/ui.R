#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    https://shiny.posit.co/
#

library(shiny)

# Define UI for the application
ui <- fluidPage(
  
  # Application title
  titlePanel("MPG Master - Fuel Efficiency Predictor"),
  
  # Sidebar with inputs
  sidebarLayout(
    sidebarPanel(
      # Input: Slider for selecting the number of cylinders
      sliderInput("cylinders",
                  "Number of Cylinders:",
                  min = 4,
                  max = 8,
                  value = 4,
                  step = 2),
      
      # Input: Slider for selecting horsepower
      sliderInput("horsepower",
                  "Horsepower:",
                  min = 50,
                  max = 300,
                  value = 100),
      
      # Input: Slider for selecting the weight
      sliderInput("weight",
                  "Weight (in 1000 lbs):",
                  min = 1.5,
                  max = 5.0,
                  value = 3.0,
                  step = 0.1)
    ),
    
    # Main panel for displaying outputs
    mainPanel(
      # Output: Display the predicted MPG
      h3("Predicted MPG:"),
      verbatimTextOutput("predictedMPG")
    )
  )
)