source("intro_ui.R")
source("interactive_page1_ui.R")
source("interactive_page2_ui.R")
source("interactive_page3_ui.R")
source("Summary_page.R")

ui <- fluidPage(
  includeCSS("styles.css"),
  theme = shinytheme("cerulean"),
  navbarPage("Crime Hotspots and Motives!",
             intro,
             interactive_page1,
             interactive_page2,
             interactive_page3,
             summary_page,
  )
)