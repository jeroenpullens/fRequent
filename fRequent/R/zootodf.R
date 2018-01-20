#' @title Convert zoo-object to data frame
#'
#' @description Converting zoo-object to data frame with proper indexing of time column and column names
#'
#' @param value must be a zoo-object
#' @import zoo
#' @references Marvin Reich (2017), mreich@@posteo.de
# ' @examples examples MISSING
#' @export

zootodf <- function(value) {
  df <- as.data.frame(value)
  df$time <- zoo::index(value) #create a Date column
  rownames(df) <- NULL #so row names not filled with dates
  df <- df[,c(ncol(df), 1:(ncol(df)-1))] #reorder columns so Date first
  return(df)
}
