# ui of tab 3

tab_3_ui <- function(id) {
  ns <- shiny::NS(id)
  shiny::tabPanel(
    title = "placeholder_2",
    icon = shiny::icon(name = "info"),
    
    shiny::wellPanel(
      shiny::HTML("
      <h3>text_2</h3>
      ")
    )
  )
}