interactive_page3 <- tabPanel("Hate Crime Distribution",
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
