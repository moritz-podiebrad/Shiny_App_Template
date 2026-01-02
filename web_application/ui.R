# ui of the web application

ui <-  shiny::fluidPage(
  shinydashboard::tabBox(
    width = 12,
    
    tab_1_ui(id = "tab_1_ui"),
    
    tab_2_ui(id = "tab_2_ui"),
    
    tab_3_ui(id = "tab_3_ui")
  )
) # end ui