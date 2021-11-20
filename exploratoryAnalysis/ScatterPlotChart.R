national_hate_crimes <- read.csv("https://raw.githubusercontent.com/info201b-2021-aut/final-project-tdao09/main/data/Hate_Crime_Incidents_per_Bias_Motivation_and_Quarter_by_State_Federal_and_Agency_2019.csv?token=AV5GX7E45YJD2YCJMH6KGPDBUAYFI")
library("tidyverse")
library("ggplot2")

updated_national_hate_crimes <- national_hate_crimes %>%
  replace(is.na(.), 0) %>%
  mutate(sum = rowSums(.[4:9]))


state_crimes <- updated_national_hate_crimes%>%
  select(State, Agency.Type, Agency, sum) %>%
  filter(State == "Washington" & Agency.Type == "Universities and Colleges")

WA_uni_crimes_plot <- ggplot(state_crimes) + 
  geom_line(mapping = aes(x = Agency, y = sum, group = State, color = Agency)) +
  labs(x = "Universities in WA", y = "Num of hate crimes", title = "Hate crimes in Washington Universities")
WA_uni_crimes_plot <- WA_uni_crimes_plot + theme(axis.text.x = element_text(angle = 90, vjust = 0.5, hjust=1))
scatter_plot_hate_crime_chart <- WA_uni_crimes_plot
scatter_plot_hate_crime_chart
