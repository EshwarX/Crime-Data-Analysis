summary_page <- tabPanel(title = "Summary Page",
                         h1("Summary", align = "left",
                            style = "font-family: Arial Black;"),
                         hr(),
                         br(),
                         p("The project was designed to report where hate crimes
                        are most prevalent in the USA and diving deeper into the
                        topic, which type of hate crimes happen most often. After
                        making visualizations using the data about hate crimes
                        all over the different states in the US, there were clear
                        patterns emerging and conclusions that could be drawn.
                        But all patterns pointed to the same direction, that 
                        hate crimes are still very much a thing even and we as a
                        society need to do better", style = "font-size:18px;"),
                         br(),
                         br(),
                         h2("Key Takeaways:", align = "center",
                            style = "font-family: Arial;"),
                         br(),
                         p("-> The data of 2019 suggests that different types of hate
                        crimes are more common in different states, however 
                        taking the overall tally of the states, California is 
                        doing the worst job at concealing the rate of motivated
                        crimes happening there. But that is hardly a surprise
                        considering that California is the state with the most
                        population among the U.S., the surprising portion of
                        this research was the numbers that New York produced.
                        Despite having less population than both Texas and
                        Florida, New York has a significantly higher hate crime
                        rate overall. By comparision states like Arkansas and
                        Iowa had nearly a thousandth of the total hate crimes of
                        states such as California, so for our research purposes
                        , it makes them a realtively safe place in the U.S when
                        it comes to steering clear of hate crimes.",
                           style = "font-size:18px"),
                         br(),
                         p("-> Our other major topic of focus was the type of hate 
                        crimes that are most or least common in the U.S. and we
                        studied the six types of hate crimes deduced by the ",
                           tags$a(href="https://www.fbi.gov/services/cjis/ucr/hate-crime", "FBI."),
                           "'Racial, ethnicity, and ancestrial' based crimes are 
                        easily the most common sort of hate crime. Religion is
                        the next most common closely followed by sexual
                        orientation. Hate crimes with gender as the motive
                        composes of only 1.03% of the total which means it is
                        rarest sort of hate crime in the U.S.",
                           style = "font-size:18px"),
                         p("-> Lastly, an interesting piece of information that we
                        were able to acquire from the hate crimes dataset is the
                        agency type in the states where hate crimes are most
                        prevalent. Stating the state where the hate crime mostly
                        occurs is helpful to go beyond that and have the type of
                        area in the state could be even more useful for the
                        average person and we did just that. According to the
                        data visualization, non-metropolitan counties is the
                        area where most hate crimes occur representing a
                        whopping 63.8% among the places hate crime could occur
                        in a state. While this number is truly shocking it is
                        feasible to imagine why this happens since
                        non-metropolitan counties are infamous for lacking proper
                        police coverage around the area. The real shocking
                        takeaway that the visualization conveys is that
                        Universities and Colleges comprise of 15% of hate crimes.
                        A place where people should feel safe is the one of the
                        most dangerous place to be at if one wants to avoid being
                        a victim of hate crime.",
                           style = "font-size:18px"),
),
                         )