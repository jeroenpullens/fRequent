#' @title Statistics per column
#'
#' @description Get the maximum/minimum/mean/.... from each column in a dataset.
#'
#' @param data The dataset that needs to be converted
#' @param func The function that you want to use
#' @export


colStats <- function(data,func=max){
  sapply(data, func, na.rm = TRUE)
  return(data)
}
