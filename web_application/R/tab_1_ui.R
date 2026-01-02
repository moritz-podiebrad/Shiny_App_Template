# ui of tab 1

tab_1_ui <- function(id) {
  ns <- shiny::NS(id)
  shiny::tabPanel(
    title = "info",
    icon = shiny::icon(name = "info"),
    
    shiny::wellPanel(
      shiny::HTML("
      <h3>Welcome to this App</h3>
      ")
    )
  )
}