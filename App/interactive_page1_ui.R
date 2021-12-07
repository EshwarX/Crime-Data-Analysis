library("shiny")
# Travon's Map
interactive_page1 <- tabPanel("Hate Crime Map",
         sidebarPanel(
           radioButtons(
             inputId = "variable",
             label = "Select Type of Hate Crime",
             choices = c("Race", 
                         "Religion",
                         "Sexual Orientation",
                         "Disability",
                         "Gender",
                         "Gender Identity",
                         "All"),
             selected = "All"
           ),
           selectInput(
             inputId = "colorscale",
             label = "Select a Color Scale",
             multiple = FALSE,
             selected = "Bluered",
             choices = c("Blackbody", "Bluered", "Blues", "Earth", "Electric", 
                         "Greens", "Greys", "Hot", "Jet", "Picnic", "Portland",
                         "Rainbow", "RdBu", "Reds", "YIGnBu", "YIOrRd")
           )
         ),
         # Main
         mainPanel(
           plotlyOutput(outputId = "interactivemap")
         ))
