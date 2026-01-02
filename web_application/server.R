# server function of the web application

server <-  function(input, output, session) {
  
  f_create_template_server(input = input, output = output, session = session)
  
  # tab 1
  shiny::callModule(
    module = tab_1_server,
    id = "module_tab_1"
  )
  
  # tab 2
  shiny::callModule(
    module = tab_2_server,
    id = "module_tab_2"
  )
  
  # tab 3
  shiny::callModule(
    module = tab_3_server,
    id = "module_tab_3"
  )
  
  # GitHub-Button
  observeEvent(input$button_github, {
    utils::browseURL(gl_v_repo_link)
  })
  
}