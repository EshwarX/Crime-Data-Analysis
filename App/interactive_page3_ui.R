interactive_page3 <- tabPanel(title = "Hate Crime Distribution",
                              h1("Hate Crime Distribution", align = "center"),
                              hr(),
                              p("This interactive page shows how hate crimes are distributed by different factors,
                                they are distribution of hate crime categories, distribution by quarter, and distribution 
                                by agency types repectively.",
                                style = "font-size:17px;"),
                              hr(),
                              # Side
                              sidebarPanel(
                                radioButtons(
                                  inputId = "category",
                                  label = "Select Type Categories",
                                  choices = c("By victim group", 
                                              "By quarter",
                                              "By Agency Type"),
                                  selected = "By victim group"
                                )
                              ),
                              # Main
                              mainPanel(
                                plotlyOutput(outputId = "pieChart")
                              ))
