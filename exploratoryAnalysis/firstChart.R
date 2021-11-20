national_hate_crimes <- tableTotal %>%
                            summarise(
                            race_crimes = sum(total_race, na.rm = TRUE),
                            religion_crimes = sum(total_religion, na.rm = TRUE),
                            disability_crimes = sum(total_disability, na.rm = TRUE),
                            gender_crimes = sum(total_gender, na.rm = TRUE),
                            gender_identity_crimes = sum(total_gender_iden, na.rm = TRUE)
                            )
type_of_hate_crime <- colnames(national_hate_crimes)
total <- unlist(national_hate_crimes[1,], use.names = FALSE)
hate_crimes_with_totals <- data.frame(type_of_hate_crime, total)

bar_chart_hate_crime <- ggplot(hate_crimes_with_totals) +
                        geom_col(mapping = aes(x = type_of_hate_crime, y = total, fill = type_of_hate_crime)) +
                        labs(title = "Total U.S. Hate Crimes In 2019",
                             x = "Type of Hate Crime",
                             y = "Total" ) +
                        scale_fill_discrete(name = "Type of Hate Crime", labels = c("Disability", 
                                                                                    "Gender", 
                                                                                    "Gender Identity",
                                                                                    "Race", 
                                                                                    "Religion")) +
                        theme(axis.text.x = element_blank(), axis.ticks.x = element_blank(), 
                              legend.background = element_rect("darkgray"))
                        
bar_chart_hate_crime

