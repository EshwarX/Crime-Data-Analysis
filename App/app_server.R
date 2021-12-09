source("interactive_page1_server.R")
source("interactive_page2_server.R")
source("interactive_page3_server.R")
library("plotly")
library("dplyr")
library("stringr")
# Server
server <- function(input, output) {
  output$interactivemap <- renderPlotly({
    plot_geo(country_summary2, 
             locationmode = "USA-states",
             hoverinfo = "text",
             text = ~paste0("State: ", State, "<br>",
                           "Count: ", get(input$variable), " (", input$variable, 
                           " Hate Crimes",")"),
             mode = "markers",
             colorbar = list(title = "Reported Counts")
               ) %>%
      add_trace(
        locations = ~state_abbreviation,
        z = ~get(input$variable),
        color = input$variable,
        colorscale = ~input$colorscale) %>%
        layout(
          geo = list(scope = "usa"),
          title = "Reported U.S Hate Crimes in 2019"
        )
  })
  
  output$barChart <- renderPlotly(({
    if(input$quarter == "1st Quarter"){
      firstQuarter
    }else if(input$quarter == "2nd Quarter"){
      secondQuarter
    }else if(input$quarter == "3rd Quarter"){
      thirdQuarter
    }else if(input$quarter == "4th Quarter"){
      fourthQuarter
    }
  }))
      
  output$pieChart <- renderPlotly(({
    if(input$category == "By victim group"){
      plot
    }else if(input$category == "By quarter"){
      quarterplot
    }else if(input$category == "By Agency Type"){
      agencyplot
    }
  }))
}
