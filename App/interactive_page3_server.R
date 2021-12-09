library(plotly)
library(dplyr)
crimedata <- read.csv("https://raw.githubusercontent.com/info201b-2021-aut/final-project-tdao09/main/data/Hate_Crime_Incidents_per_Bias_Motivation_and_Quarter_by_State_Federal_and_Agency_2019.csv?token=AV5FF3GVGGEB4K5YBEV2ZADBXBPXK")

groups <- c(sum(crimedata$Race..Ethnicity..Ancestry, na.rm = TRUE), 
            sum(crimedata$Religion, na.rm = TRUE), 
            sum(crimedata$Sexual.orientation, na.rm = TRUE), 
            sum(crimedata$Disability, na.rm = TRUE), 
            sum(crimedata$Gender, na.rm = TRUE), 
            sum(crimedata$Gender.identity, na.rm = TRUE))

quartervalue <- c(sum(crimedata$X1st.quarter, na.rm = TRUE), 
            sum(crimedata$X2nd.quarter, na.rm = TRUE), 
            sum(crimedata$X3rd.quarter, na.rm = TRUE), 
            sum(crimedata$X4th.quarter, na.rm = TRUE))

crimedata <- crimedata%>%
  mutate(totalcrime = Race..Ethnicity..Ancestry + Religion + Sexual.orientation + Disability + Gender + Gender.identity)

sumAgency <- crimedata %>%
  group_by(Agency.Type) %>%
  summarise(crime = sum(totalcrime, na.rm = TRUE))

quarter <- c("first quarter", "second quarter", "third quarter", "fourth quarter")

categories <- c("Race, Ethnicity and Ancestry", "religion", "sexual orientation", "disability", "gender","gender identity")
agencytype <- unique(crimedata$Agency.Type)

plot <- plot_ly(crimeframe, labels = categories, values = groups, type = 'pie')
plot <- plot %>% layout(title = 'Hate Crime Victims by Categories',
                      xaxis = list(showgrid = FALSE, zeroline = FALSE, showticklabels = FALSE),
                      yaxis = list(showgrid = FALSE, zeroline = FALSE, showticklabels = FALSE))

quarterplot <- plot_ly(crimeframe, labels = quarter, values = quartervalue, type = 'pie')
quarterplot <- quarterplot %>% layout(title = 'Hate Crime Victims by Quarters',
                        xaxis = list(showgrid = FALSE, zeroline = FALSE, showticklabels = FALSE),
                        yaxis = list(showgrid = FALSE, zeroline = FALSE, showticklabels = FALSE))

agencyplot <- plot_ly(sumAgency, labels = agencytype, values = sumAgency$crime, type = 'pie')
agencyplot <- agencyplot %>% layout(title = 'Hate Crime Victims by Agencies',
                                  xaxis = list(showgrid = FALSE, zeroline = FALSE, showticklabels = FALSE),
                                  yaxis = list(showgrid = FALSE, zeroline = FALSE, showticklabels = FALSE))
