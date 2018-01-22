#' @title Make a complete dataframe numeric
#'
#' @description Make a complete dataframe numeric. NOTE: this can potentially lead to a data loss and should therefore be handled with care.
#'
#' @param dataframe The dataframe that needs to be converted
#' @export


dataframe_numeric=function(dataframe){
  for(i in 1:dim(dataframe)[2]){
    dataframe[,i]=as.numeric(dataframe[,i])
  }
  return(dataframe)
}
