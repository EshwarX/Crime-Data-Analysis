library("tidyverse")

crimedata <- read.csv("https://raw.githubusercontent.com/info201b-2021-aut/final-project-tdao09/main/data/Hate_Crime_Incidents_per_Bias_Motivation_and_Quarter_by_State_Federal_and_Agency_2019.csv?token=AV5GX7E45YJD2YCJMH6KGPDBUAYFI")

## counties <- counties %>%
##  mutate(
##    location = paste(counties$county, counties$state, sep=", ")
##  )

##summary_info

tableSummary <- crimedata %>%
    group_by(State,Race..Ethnicity..Ancestry, Sexual.orientation, Disability, Gender, Gender.identity) %>%
    summarise(
      totalHateCrime = Race..Ethnicity..Ancestry + Sexual.orientation + Disability + Gender + Gender.identity
    )
