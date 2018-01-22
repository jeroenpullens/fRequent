#' @title Plotting per column
#'
#' @description Plotting one column at a time in R to investigate a dataframe with raw data
#'
#' @param dataframe The dataframe that needs to be plotted
#' @param vabline Option to plot a vertical line, the color is set to red (DEFAULT=FALSE)
#' @param habline Option to plot a horizontal line, the color is set to red (DEFAULT=FALSE)
#' @import graphics
#' @export

plot_per_column=function(dataframe,vabline=FALSE,habline=FALSE){
  for(i in 1:dim(dataframe)[2]){
    plot(dataframe[,i],ylab=names(dataframe)[i])
    if(vabline!=FALSE){
      abline(v=vabline,col=2)
    }
    if(habline!=FALSE){
      abline(h=habline,col=2)
    }
    readline(prompt="Press [enter] to continue")
  }
}
