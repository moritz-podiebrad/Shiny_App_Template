# ui of tab 1

tab_1_ui <- function(id) {
  ns <- shiny::NS(id)
  shiny::tabPanel(
    title = "home",
    icon = shiny::icon(name = "house", lib = "font-awesome"),
    
    shiny::wellPanel(
      shiny::HTML("
      <h3>Welcome to this App</h3>
      ")
    )
  )
}