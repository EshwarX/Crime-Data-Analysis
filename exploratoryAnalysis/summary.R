library("tidyverse")

crimedata <- read.csv("data/Hate_Crime_Incidents_per_Bias_Motivation_and_Quarter_by_State_Federal_and_Agency_2019.csv")


summary_info <- list()
summary_info$records <- nrow(crimedata)
summary_info$criteria <- ncol(crimedata)
summary_info$groups <- crimedata %>%
  summarise(Race..Ethnicity..Ancestry, Sexual.orientation, Disability, Gender, Gender.identity, Population)
summary_info$quarters <- crimedata %>%
  summarise(X1st.quarter, X2nd.quarter, X3rd.quarter, X4th.quarter)
summary_info$states <- crimedata %>%
  summarise(Agency,Population)
