library("knitr")
library("tidyverse")

col=c("slateblue","skyblue","royalblue","steelblue","slategray")
groups <- c(sum(crimedata$Race..Ethnicity..Ancestry, na.rm = TRUE), sum(crimedata$Sexual.orientation, na.rm = TRUE), sum(crimedata$Disability, na.rm = TRUE), sum(crimedata$Gender, na.rm = TRUE), sum(crimedata$Gender.identity, na.rm = TRUE))
chem <- c("Race, Ethnicity and Ancestry", "sexual orientation", "disability", "gender","gender identity")
pie(x=groups, labels=chem, radius=1, main="Proportion of Hate Crimes", col=col, clockwise=T)
