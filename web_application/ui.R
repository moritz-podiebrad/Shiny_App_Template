# ui of the web application

ui <-  shiny::fluidPage(
  
  f_create_template_ui(),
  
  shiny::fluidRow(
    shiny::column(
      width = 8,
      shiny::h1("Heading 1"),
      shiny::p(
        "Here some text can be displayed."
      )
    ),
    shiny::column(
      width = 4,
      shiny::actionButton("button_github", "Open Project on GitHub")
    )
  ),
  
  shiny::tags$hr(),
  
  shinydashboard::tabBox(
    width = 12,
    
    tab_1_ui(id = "tab_1_ui"),
    
    tab_2_ui(id = "tab_2_ui"),
    
    tab_3_ui(id = "tab_3_ui")
  )
) # end ui