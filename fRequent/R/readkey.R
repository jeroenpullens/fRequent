#' @title Pause a script and wait for "enter"
#'
#' @description Pause a script and wait for "enter"
#'
#' @export
#'
readkey <- function() {
  line <- readline(prompt="Press [enter] to continue")
}
