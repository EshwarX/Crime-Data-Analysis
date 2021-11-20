library("knitr")
library("tidyverse")
#install.packages("plotrix")
library("plotrix")

crimedata <- read.csv("https://raw.githubusercontent.com/info201b-2021-aut/final-project-tdao09/main/data/Hate_Crime_Incidents_per_Bias_Motivation_and_Quarter_by_State_Federal_and_Agency_2019.csv?token=AV5GX7E45YJD2YCJMH6KGPDBUAYFI")

col=c("slateblue","skyblue","royalblue","steelblue","slategray","blue")
groups <- c(sum(crimedata$Race..Ethnicity..Ancestry, na.rm = TRUE), 
            sum(crimedata$Religion, na.rm = TRUE), 
            sum(crimedata$Sexual.orientation, na.rm = TRUE), 
            sum(crimedata$Disability, na.rm = TRUE), 
            sum(crimedata$Gender, na.rm = TRUE), 
            sum(crimedata$Gender.identity, na.rm = TRUE))
categories <- c("Race, Ethnicity and Ancestry", "religion", "sexual orientation", "disability", "gender","gender identity")
#pie_chart_hate_crime <- pie(x=groups, labels=categories, radius=1, main="Proportion of Hate Crimes", col=col, clockwise=T)
#uncomment the following line to see a 3D pie chart
pie_chart_hate_crime_3d <- pie3D(x=groups,labels = categories,explode = 0.1, main = "Proportion of Hate Crimes 3D")

