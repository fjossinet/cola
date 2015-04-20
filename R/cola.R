#' <Add Title>
#'
#' <Add Description>
#'
#' @import htmlwidgets
#'
#' @export
cola <- function(fileName, width = NULL, height = NULL) {

  # forward options using x
  x<- list()
  x$svg <- paste(readLines(fileName), collapse="")
  
  # create widget
  htmlwidgets::createWidget(name = 'cola', x = x, width = width, height = height, package = 'cola')
}

#' Widget output function for use in Shiny
#'
#' @export
colaOutput <- function(outputId, width = '100%', height = '400px'){
  shinyWidgetOutput(outputId, 'cola', width, height, package = 'cola')
}

#' Widget render function for use in Shiny
#'
#' @export
renderCola <- function(expr, env = parent.frame(), quoted = FALSE) {
  if (!quoted) { expr <- substitute(expr) } # force quoted
  shinyRenderWidget(expr, colaOutput, env, quoted = TRUE)
}
