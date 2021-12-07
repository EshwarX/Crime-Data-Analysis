source("interactive_page1_server.R")
source("interactive_page2_server.R")
source("interactive_page3_server.R")

# Server
server <- function(input, output) {
  output$map <- renderPlotly(
    ggplotly(
      p <- ggplot(state_shape) +
        geom_polygon(
          mapping = aes(x = long, y = lat, group = group, text = 
                          paste0("State: ", str_to_title(State), "<br>",
                                 "Count: ", get(input$variable)," (", 
                                 input$variable, " Hate Crimes)"),
                        fill = get(input$variable)),
          color = "white"
        ) + 
        coord_map() +
        scale_fill_continuous(low = input$lowcolor, high = input$highcolor) +
        labs(title = "U.S Hate Crimes in 2019", fill = "Reported Count") +
        theme(
          axis.title.x = element_blank(),
          axis.title.y = element_blank()
        )
    )
  )
}