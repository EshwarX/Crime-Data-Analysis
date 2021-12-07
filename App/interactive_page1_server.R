library("plotly")
library("dplyr")
library("ggplot2")

hate_crime_data <- read.csv("https://raw.githubusercontent.com/info201b-2021-aut/final-project-tdao09/main/data/Hate_Crime_Incidents_per_Bias_Motivation_and_Quarter_by_State_Federal_and_Agency_2019.csv?token=AV5FF3GVGGEB4K5YBEV2ZADBXBPXK")
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

# Plotly


country_summary2 <- hate_crime_data %>% 
  group_by(State) %>%
  summarize(
    race_hate_crimes = sum(Race..Ethnicity..Ancestry, na.rm = TRUE),
    religion_hate_crimes = sum(Religion, na.rm = TRUE),
    sexual_orientation_hate_crimes = sum(Sexual.orientation, na.rm = TRUE),
    disability_hate_crimes = sum(Disability, na.rm = TRUE),
    gender_hate_crimes = sum(Gender, na.rm = TRUE),
    gender_identity_hate_crimes = sum(Gender.identity, na.rm = TRUE)
  ) %>%
  filter(State != "" & State != "Federal") %>%
  mutate(
    all_hate_crimes = race_hate_crimes + religion_hate_crimes +
      sexual_orientation_hate_crimes + disability_hate_crimes +
      gender_hate_crimes + gender_identity_hate_crimes,
      state_abbreviation = state.abb[match(State, state.name)]
  ) 
country_summary2[8, 9] <- "DC"
colnames(country_summary2) <- c("State", "Race", "Religion", "Sexual Orientation",
                           "Disability", "Gender", "Gender Identity", 
                           "All", "state_abbreviation")


