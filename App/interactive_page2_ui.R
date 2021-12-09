interactive_page2 <- tabPanel("Hate Crime By Each Quarter",
                              # Side
                              sidebarPanel(
                                radioButtons(
                                  inputId = "quarter",
                                  label = "Select Quarter",
                                  choices = c("1st Quarter", 
                                              "2st Quarter",
                                              "3st Quarter",
                                              "4st Quarter"),
                                  selected = "1st Quarter"
                                )
                              ),
                              # Main
                              mainPanel(
                                plotlyOutput(outputId = "barChart")
                              ))
