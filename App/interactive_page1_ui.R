library("shiny")
# Travon's Map
interactive_page1 <- tabPanel(title = "Hate Crime Map",
                              h1("USA Map Distrubution Of Hate Crimes", align = "center"),
                              br(),
                              hr(),
                              p("This interactive chart displays the map of USA
                                and shows the number of hate crimes distributed
                                by each state along with giving the user a choice 
                                to pick the specific type of hate crime distributed by
                                each state. The user can also pick the color they
                                would like their map in and given the nature of
                                the interactive chart, they can even move the
                                chart on its axis."),
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
         ),
         br(),
         
         )
