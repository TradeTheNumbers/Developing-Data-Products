library(RCurl)
library(caret)
library(shiny)

cardata <- read.csv("cardata.csv")

modFit <- train(mpg ~ cyl + horse + weight + disp + origin + year + accel, method="glm", data=cardata)

shinyServer(
        function(input, output) { 
                #prediction = predict(modFit, data)
                #output$prediction <- renderPrint ({as.string(prediction)})
                output$prediction <- renderPrint ({
                        horse = input$horse
                        disp = input$disp
                        cyl = input$cyl
                        weight = input$weight
                        accel = input$accel
                        year = input$year
                        origin = input$origin
                        predict(modFit,data.frame(cyl, disp, horse, weight, accel, year, origin))})
        }
)
