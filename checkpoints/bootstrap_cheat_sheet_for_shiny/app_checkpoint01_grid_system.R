# BOOTSTRAP CHEAT SHEET FOR SHINY ----
# DS4B 202-R ----

# LIBRARIES ----
library(shiny)
library(tidyverse)
library(plotly)

# USER INTERFACE ----
ui <- shiny::fluidPage(
    title = "Bootstrap Cheat Sheet for Shiny", 
    
    div(
        class = "container",
        id    = "page",
        
        # HEADER ----
        h1(class = "page-header", "Bootstrap Cheat Sheet", tags$small("For Shiny")),
        p(
            class = "lead",
            "This cheat sheet is the first part of the ", 
            a(href = "https://university.business-science.io/", target = "_blank", "Expert Shiny Application Development Course"), 
            "by Business Science"
        ),
        
        # 1.0 BOOTSTRAP GRID SYSTEM ----
        h2("1.0 Bootstrap Grid System"),
        div(
            class = "container text-center",
            fluidRow(
                column(
                    width = 4,
                    class = "bg-primary",
                    p("Grid Width 4")
                ),
                column(
                    width = 4,
                    class = "bg-warning",
                    p("Grid Width 4")
                ),
                column(
                    width = 4,
                    class = "bg-danger",
                    p("Grid Width 4")
                )
            ),
            fluidRow(
                column(
                    width = 3,
                    class = "bg-primary",
                    p("Grid Width 3")
                ),
                column(
                    width = 9,
                    class = "bg-info",
                    p("Grid Width 9")
                )
            )
        )
    )
)

# SERVER ----
server <- function(input, output, session) {
    
}

shinyApp(ui = ui, server = server)
