# Developing-Data-Products

---
title: "Developing Data Products Project"
author: "Adam O'Dell"
date: "Monday, September 21, 2015"
output: html_document
---

Introduction
========================================================
Using the famed 'mtcars' data set, this shiny application calculates a prediction about each vehicle's miles per gallon (MPG), based on a number of variables which users can input.  

A Simple GLM Model for MPG Prediction
========================================================


```{r, eval=FALSE}
library(RCurl)
library(caret)
cardata <- read.csv("cardata.csv")
modFit <- train(mpg ~ cyl + horse + weight + disp + origin + year + accel, method="glm", data=cardata)

```

The model shows good performance at predicting MPG, with a root mean squared error of 3.4 and an R-squared value of 0.82 - quite good given the relative simplicity of the model.



