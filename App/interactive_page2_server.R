library(tidyverse)
library(plotly)
library(dplyr)

crimedata <- read.csv("https://raw.githubusercontent.com/info201b-2021-aut/final-project-tdao09/main/data/Hate_Crime_Incidents_per_Bias_Motivation_and_Quarter_by_State_Federal_and_Agency_2019.csv?token=AV5FF3GVGGEB4K5YBEV2ZADBXBPXK")

sumCrime <- crimedata %>%
  group_by(State)%>%
  summarise(crime = sum(X1st.quarter, na.rm = TRUE))
sumCrime

firstQuarter <- plot_ly(
  x = sumCrime$State,
  y = sumCrime$crime,
  name = "Crime Incidents In 1st Quarter",
  type = "bar"
)

sumCrime <- crimedata %>%
  group_by(State)%>%
  summarise(crime = sum(X2nd.quarter, na.rm = TRUE))


secondQuarter <- plot_ly(
  x = sumCrime$State,
  y = sumCrime$crime,
  name = "Crime Incidents In 2nd Quarter",
  type = "bar"
)

sumCrime <- crimedata %>%
  group_by(State)%>%
  summarise(crime = sum(X3rd.quarter, na.rm = TRUE))


thirdQuarter <- plot_ly(
  x = sumCrime$State,
  y = sumCrime$crime,
  name = "Crime Incidents In 3rd Quarter",
  type = "bar"
)

sumCrime <- crimedata %>%
  group_by(State)%>%
  summarise(crime = sum(X4th.quarter, na.rm = TRUE))


fourthQuarter <- plot_ly(
  x = sumCrime$State,
  y = sumCrime$crime,
  name = "Crime Incidents In 4th Quarter",
  type = "bar"
)
