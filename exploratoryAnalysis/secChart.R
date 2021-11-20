library("knitr")
library("tidyverse")

crimedata <- read.csv("https://raw.githubusercontent.com/info201b-2021-aut/final-project-tdao09/main/data/Hate_Crime_Incidents_per_Bias_Motivation_and_Quarter_by_State_Federal_and_Agency_2019.csv?token=AV5GX7E45YJD2YCJMH6KGPDBUAYFI")

col=c("slateblue","skyblue","royalblue","steelblue","slategray")
groups <- c(sum(crimedata$Race..Ethnicity..Ancestry, na.rm = TRUE), sum(crimedata$Sexual.orientation, na.rm = TRUE), sum(crimedata$Disability, na.rm = TRUE), sum(crimedata$Gender, na.rm = TRUE), sum(crimedata$Gender.identity, na.rm = TRUE))
chem <- c("Race, Ethnicity and Ancestry", "sexual orientation", "disability", "gender","gender identity")
pie(x=groups, labels=chem, radius=1, main="Proportion of Hate Crimes", col=col, clockwise=T)
