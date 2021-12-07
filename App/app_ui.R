
ui <- fluidPage(
  navbarPage("Crime Hotspots and Motives!",
             # Intro
             tabPanel("Introduction",
                      h2("Introduction"),
                      p("Hate crimes are crimes or attacks on specific persons 
                      due to their belonging to a particular group. For example, 
                      racially-motivated hate crimes are made against a victim 
                      because of their race or ancestry. These type of crimes 
                      are very different than the more mainstream crimes such 
                      as robberies. When one attempts to rob a store, they 
                      should expect to gain something (e.g. money). 
                      However, there is absolutely nothing to gain from hate 
                      crimes, but people still perform them."),
                      p("We have found a dataset on the number of types of hate 
                        crimes (race, religion, sexual orientation, disability, 
                        gender, and gender identity). This is on hate crimes in
                        the United States during 2019. Other information 
                        included is the “agency” (such as a specific city or a 
                        college campus) and their population. Additionally, 
                        there are quarterly sums of hate crimes for each 
                        location."),
                      sidebarLayout(
                        sidebarPanel(
                        ),
                        mainPanel(
                        ),
                      ),
             ),
             # Travon's Map
             tabPanel("Hate Crime Map",
                      # Side
                      sidebarPanel(
                        radioButtons(
                          inputId = "variable",
                          label = "Select Type of Hate Crime",
                          choices = c("Race", 
                                      "Religion",
                                      "Sexual Orientation",
                                      "Disability",
                                      "Gender",
                                      "Gender",
                                      "All"),
                          selected = "All"
                        ),
                        selectInput(
                          inputId = "lowcolor",
                          label = "Select a Color Representing the Lower End (Default is White)",
                          multiple = FALSE,
                          selected = "Blue",
                          choices = c("Black", "White", "Red", "Orange", 
                                     "Yellow", "Green", "Blue", "Purple", 
                                     "Pink")
                        ),
                        selectInput(
                          inputId = "highcolor",
                          label = "Select a Color Representing the Higher End (Default is Black)",
                          multiple = FALSE,
                          selected = "Red",
                          choices = c("Black", "White", "Red", "Orange", 
                                     "Yellow", "Green", "Blue", "Purple", 
                                     "Pink")
                        )
                      ),
                      # Main
                      mainPanel(
                        plotlyOutput(outputId = "map")
                      )),
             tabPanel("Interactive chart 2"),
             tabPanel("Interactive chart 3"),
             tabPanel("Conclusion Page"),
  )
)