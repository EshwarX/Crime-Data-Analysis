intro <- tabPanel(title = "Introduction",
                  h1("Introduction", align = "center"),
                  hr(),
                  br(),
                  p(tags$img(src='crimePic.jpeg', height = 300, width = 400),
                    align = "center"),
                  br(),
                  p("As world citizens, crime is a domain of information
                            that we all care about and relate to. Knowing about 
                            the world situation is advantageous as we can be 
                            aware of certain dangers to avoid so we can live a 
                            peaceful and happy life. Given the events of 2020 
                            and it forcing the world to be reminded of the vast
                            hatred that still persists among people, we decided
                            to analyze hate crimes. Our analysis and
                            presentation will mostly revolve around the
                            distribution of those hate crimes (location of the
                            incident) and type of hate crime it was (the 
                            motivation behind it). This information could prove
                            to be useful in dodging certain places given their
                            trend of having a particular type of hate crime
                            happeing frequently.",
                    style = "font-size:17px;"),
                  br(),
                  br(),
                  p("This project is based on the data provided by this ",
                    tags$a(href="https://raw.githubusercontent.com/info201b-2021-aut/final-project-tdao09/main/data/Hate_Crime_Incidents_per_Bias_Motivation_and_Quarter_by_State_Federal_and_Agency_2019.csv?token=AV5GX7FAKC3XTDSH7WCQC3TBXF7YQ", "dataset."),
                    "This dataset stores the records of different 
                            states in the United States and the number of hate
                            crimes that occured there organized by the specific 
                            motive behind it.",
                    style = "font-size:17.5px;"),
                  
)