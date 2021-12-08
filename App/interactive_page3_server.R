library(plotly)
library(dplyr)
crimedata <- read.csv("https://raw.githubusercontent.com/info201b-2021-aut/final-project-tdao09/main/data/Hate_Crime_Incidents_per_Bias_Motivation_and_Quarter_by_State_Federal_and_Agency_2019.csv?token=AV5FF3GVGGEB4K5YBEV2ZADBXBPXK")

groups <- c(sum(crimedata$Race..Ethnicity..Ancestry, na.rm = TRUE), 
            sum(crimedata$Religion, na.rm = TRUE), 
            sum(crimedata$Sexual.orientation, na.rm = TRUE), 
            sum(crimedata$Disability, na.rm = TRUE), 
            sum(crimedata$Gender, na.rm = TRUE), 
            sum(crimedata$Gender.identity, na.rm = TRUE))

crimedata <- crimedata%>%
  mutate(totalcrime = Race..Ethnicity..Ancestry + Religion + Sexual.orientation + Disability + Gender + Gender.identity)

sumCrime <- crimedata %>%
  group_by(State)%>%
  summarise(crime = sum(totalcrime, na.rm = TRUE))
sumCrime

sumAgency <- crimedata %>%
  group_by(Agency.Type) %>%
  summarise(crime = sum(totalcrime, na.rm = TRUE))

categories <- c("Race, Ethnicity and Ancestry", "religion", "sexual orientation", "disability", "gender","gender identity")
states <- unique(crimedata$State)
agencytype <- unique(crimedata$Agency.Type)

plot <- plot_ly(crimeframe, labels = categories, values = groups, type = 'pie')
plot <- plot %>% layout(title = 'Hate Crime Victims by Categories',
                      xaxis = list(showgrid = FALSE, zeroline = FALSE, showticklabels = FALSE),
                      yaxis = list(showgrid = FALSE, zeroline = FALSE, showticklabels = FALSE))

stateplot <- plot_ly(sumCrime, labels = states, values = sumCrime$crime, type = 'pie')
stateplot <- stateplot %>% layout(title = 'Hate Crime Victims by States',
                        xaxis = list(showgrid = FALSE, zeroline = FALSE, showticklabels = FALSE),
                        yaxis = list(showgrid = FALSE, zeroline = FALSE, showticklabels = FALSE))

agencyplot <- plot_ly(sumAgency, labels = agencytype, values = sumAgency$crime, type = 'pie')
agencyplot <- agencyplot %>% layout(title = 'Hate Crime Victims by Agencies',
                                  xaxis = list(showgrid = FALSE, zeroline = FALSE, showticklabels = FALSE),
                                  yaxis = list(showgrid = FALSE, zeroline = FALSE, showticklabels = FALSE))
