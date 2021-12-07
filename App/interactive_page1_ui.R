
# Travon's Map
interactive_page1 <- tabPanel("Hate Crime Map",
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
         ))