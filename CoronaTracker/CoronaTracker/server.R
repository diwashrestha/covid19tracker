library(shiny)
library(bs4Dash)
library(tidyverse)

# extract data from github repo
corona_live_data <- read_csv("https://raw.githubusercontent.com/owid/covid-19-data/master/public/data/owid-covid-data.csv")

# Define server logic required to draw a histogram
shinyServer(function(input, output) {
  

})
