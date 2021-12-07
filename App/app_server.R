library("plotly")
library("dplyr")
library("ggplot2")


hate_crime_data <- read.csv("data/Hate_Crime_Incidents_per_Bias_Motivation_and_Quarter_by_State_Federal_and_Agency_2019.csv")
country_summary <- hate_crime_data %>% 
  group_by(State) %>%
  summarize(
    race_hate_crimes = sum(Race..Ethnicity..Ancestry, na.rm = TRUE),
    religion_hate_crimes = sum(Religion, na.rm = TRUE),
    sexual_orientation_hate_crimes = sum(Sexual.orientation, na.rm = TRUE),
    disability_hate_crimes = sum(Disability, na.rm = TRUE),
    gender_hate_crimes = sum(Gender, na.rm = TRUE),
    gender_identity_hate_crimes = sum(Gender.identity, na.rm = TRUE)
  ) %>%
  mutate(
    all_hate_crimes = race_hate_crimes + religion_hate_crimes +
      sexual_orientation_hate_crimes + disability_hate_crimes +
      gender_hate_crimes + gender_identity_hate_crimes,
    State = tolower(State)
  ) %>% 
  filter(State != "" & State != "Federal")

state_shape <- map_data("state") %>% 
  rename(State = region) %>%
  left_join(country_summary, by = "State")

colnames(state_shape) <- c("long", "lat", "group", "order", "State", 
                           "subregion", "Race", "Religion", "Sexual Orientation",
                           "Disability", "Gender", "Gender Identity", 
                           "All")
# Server
server <- function(input, output) {
  
  # USA MAP - Travon Dao
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
  # End
}
