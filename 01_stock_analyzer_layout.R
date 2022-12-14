# BUSINESS SCIENCE ----
# DS4B 202-R ----
# STOCK ANALYZER APP - LAYOUT -----
# Version 1

# APPLICATION DESCRIPTION ----
# - Create a basic layout in shiny showing the stock dropdown, interactive plot and commentary


# LIBRARIES ----
library(shiny)
library(shinyWidgets)

library(plotly)
library(tidyquant)
library(tidyverse)

source(file = "00_scripts/stock_analysis_functions.R")

# UI ----

ui <- fluidPage(
    title="Stock Analyzer",
    
    #1.0 HEADER ----
    div(
        h1("Stock Analyzer", "by Business Science"),
        p("This is the first mini-project completed for a Shiny Course")
    ),
    #2.0 APPLICATION UI ----
    div(
        column(width = 4, 
               wellPanel(
                   pickerInput(inputId="stock_selection", choices = 1:10)
               )
               ),
        column(width = 8, "PLOT")
    )
    
)


# SERVER ----

server <- function(input, output, session){}

# RUN APP ----

shinyApp(ui = ui, server = server)

