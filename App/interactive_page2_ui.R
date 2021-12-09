interactive_page2 <- tabPanel("Hate Crime By Each Quarter",
                              # Title Panel
                              titlePanel("Quarter display of Hate Crimes"),
                              # Side
                              sidebarPanel(
                                radioButtons(
                                  inputId = "quarter",
                                  label = "Select Quarter",
                                  choices = c("1st Quarter", 
                                              "2nd Quarter",
                                              "3rd Quarter",
                                              "4th Quarter"),
                                  selected = "1st Quarter"
                                )
                              ),
                              # Main
                              mainPanel(
                                h1("Question: How different are hate crimes being committed during different quarters of the year?", align = "center"),
                                plotlyOutput(outputId = "barChart"),
                                p("This bar chart displays all the hate crimes in a quarter per state. If you hover each bar you can actually see what state it is and the total amount of crimes.")
                              ))
