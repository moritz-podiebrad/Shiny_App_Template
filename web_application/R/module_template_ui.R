# set colors

v_main_color <- "#292929"

f_create_template_ui <- function() {
  shiny::tagList(
    waiter::useWaiter(),
    waiter::waiter_show_on_load(
      html  = shiny::tagList(
        waiter::spin_folding_cube(),
        shiny::br(),
        shiny::h4("Loading Web Application...")
      ),
      color = v_main_color
    )
  )
}
