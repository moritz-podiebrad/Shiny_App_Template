# server function of the web application

server <-  function(input, output, session) {
    
  shiny::callModule(
    module = tab_1_server,
    id = "module_tab_1"
  )
  
  
  shiny::callModule(
    module = tab_2_server,
    id = "module_tab_1"
  )
  
  
  shiny::callModule(
    module = tab_3_server,
    id = "module_tab_1"
  )
}