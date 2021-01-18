#' @title Copy to clipboard
#'
#' @description Copy a dataframe to the clipboard
#'
#' @param df The dataframe that needs to be copied
#' @param sep The used character as seperator, (DEFAULT = ",")
#' @param dec The used character as decimal, (DEFAULT = ".")
#' @param max.size Maximum size of dataframe, (DEFAULT=(200*1000))
#' @export




cb <- function(df, sep=",", dec=".", max.size=(200*1000)){
  # Copy a data.frame to clipboard
  utils::write.table(df, paste0("clipboard-", formatC(max.size, format="f", digits=0)), sep=sep, row.names=FALSE, dec=dec)
}