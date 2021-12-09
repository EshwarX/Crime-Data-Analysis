library(tidyverse)
library(plotly)
library(dplyr)

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
