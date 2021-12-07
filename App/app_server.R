
server <- function(input, output) {
  output$map <- renderPlotly(interactive_map)
}