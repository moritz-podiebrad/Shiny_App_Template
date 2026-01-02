# ui of tab 2

tab_2_ui <- function(id) {
  ns <- shiny::NS(id)
  shiny::tabPanel(
    title = "placeholder_1",
    icon = shiny::icon(name = "info"),
    
    shiny::wellPanel(
      shiny::HTML("
      <h3>text_1</h3>
      ")
    )
  )
}