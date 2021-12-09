library("tidyverse")


x1 <- crimedata %>%
  summarise(first = sum(X1st.quarter, na.rm = TRUE))

x2 <- crimedata %>%
  summarise(first = sum(X2nd.quarter, na.rm = TRUE))

x3 <- crimedata %>%
  summarise(first = sum(X3rd.quarter, na.rm = TRUE))

x4 <- crimedata %>%
  summarise(first = sum(X4th.quarter, na.rm = TRUE))

firstQuarter <- plot_ly(x1, x = c("First Quarter"), y =  max(x1) = "dunk", type = 'bar')
firstQuarter <- plot %>% layout(title = 'tester')
