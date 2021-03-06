MPG predict presentation
========================================================
author: Adam O'Dell
date: September 21, 2015

Overview
========================================================

- This Shiny app helps to:
- Learn about interactive Shiny apps
- Learn about simple predictive models

A Simple Predictive Model
========================================================


```r
library(RCurl)
library(caret)
cardata <- read.csv("cardata.csv")
modFit <- train(mpg ~ cyl + horse + weight + disp + origin + year + accel, method="glm", data=cardata)
```


Performance
========================================================

- The model shows good performance at predicting MPG, with a root mean squared error of 3.4 and an R-squared value of 0.82 - quite good given the relative simplicity of the model.

Benefits of Shiny
========================================================

- The benefits of deploying Shiny apps are many, including:
- Easy use by non-programmers
- Interactive use by your target audience
- Easy web-hosting

Benefits of Prediction Models
========================================================

- Prediction models allow you to extrapolate existing relationships to new ones.
- With a good model, anyone can be a discerning data scientist.

