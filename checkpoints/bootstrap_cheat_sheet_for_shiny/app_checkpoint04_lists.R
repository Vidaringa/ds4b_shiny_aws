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
        ),
        
        hr(),
        
        # 2.0 WORKING WITH TEXT ----
        h2("2.0 Working With Text"),
        
        p(class = "lead", "Business Science University helps us learn Shiny"),
        
        fluidRow(
            column(
                width = 6,
                p("We are creating a Boostrap for Shiny cheat sheet."),
                p(strong("In section 1"), "we learned about the", strong(em("Bootstrap Grid System."))),
                p(tags$mark("In section 2"),  ", we learned about working with text in", code("bootstrap"), ".")
            ),
            column(
                width = 6,
                tags$blockquote(
                    class = "blockquote-reverse",
                    p("When learning data science, consistency is more important than quantity."),
                    tags$footer("Quote by", tags$cite(title = "Matt Dancho", "Matt Dancho"))
                )
            )
        ),
        
        hr(),
        
        # 3.0 TEXT ALIGNMENT ----
        h2("3.0 Text Alignment"),
        div(
            class = "container", 
            id    = "text_alignment_1",
            p(class = "text-left text-lowercase",   "Left-Aligned Lowercase Text"),
            p(class = "text-center text-uppercase", "Center-Aligned Uppercase Text"),
            p(class = "text-right text-capitalize", "Right-Aligned capitalized text")
        ),
        div(
            class = "container", 
            id    = "text_alignment_2",
            fluidRow(
                p(class = "text-left text-lowercase",   "Left-Aligned Lowercase Text") %>% column(width = 4, class = "bg-primary"),
                p(class = "text-center text-uppercase", "Center-Aligned Uppercase Text") %>% column(width = 4, class = "bg-success"),
                p(class = "text-right text-capitalize", "Right-Aligned capitalized text") %>% column(width = 4, class = "bg-info")
            )
        ),
        
        hr(),
        
        # 4.0 LISTS ----
        h2("4.0 Lists"),
        tags$ul(
            tags$li("Item 1"),
            tags$li("Item 2"),
            tags$li("Item 3"),
            tags$li("Item 4")
        ),
        tags$ol(
            tags$li("Item 1"),
            tags$li("Item 2"),
            tags$li("Item 3"),
            tags$li("Item 4")
        ),
        tags$ul(
            class = "list-inline",
            tags$li("Item 1"),
            tags$li("Item 2"),
            tags$li("Item 3"),
            tags$li("Item 4")
        ),
        
        
        
        div(style = "height: 400px;")
        
        
    )
)

# SERVER ----
server <- function(input, output, session) {
    
}

shinyApp(ui = ui, server = server)
