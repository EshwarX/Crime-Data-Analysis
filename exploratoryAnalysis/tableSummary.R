library("tidyverse")

crimedata <- read.csv("https://raw.githubusercontent.com/info201b-2021-aut/final-project-tdao09/main/data/Hate_Crime_Incidents_per_Bias_Motivation_and_Quarter_by_State_Federal_and_Agency_2019.csv?token=AV5GX7E45YJD2YCJMH6KGPDBUAYFI")

## counties <- counties %>%
##  mutate(
##    location = paste(counties$county, counties$state, sep=", ")
##  )

##summary_info

tableTotal <- crimedata %>%
    group_by(State) %>%
    summarise(
      total_race = sum(Race..Ethnicity..Ancestry, na.rm = TRUE),
      total_religion = sum(Religion, na.rm = TRUE),
      total_sex = sum(Sexual.orientation, na.rm = TRUE),
      total_disability = sum(Disability, na.rm = TRUE),
      total_gender = sum(Gender, na.rm = TRUE),
      total_gender_iden = sum(Gender.identity, na.rm = TRUE), 
      total_hate_crimes = total_race + total_religion + total_sex + total_disability + total_gender + total_gender_iden
    )

pretty_tableTotal <- tableTotal

 ## colnames(tableTotal) <- c('States', 'Total Race', 'Total Religion', 'Total Sex', 'Total Disability', 'Total Gender', 'Total Gender Identity', 'Total Hate Crimes')
