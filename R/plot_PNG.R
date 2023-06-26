#' Save ggplot object as a PNG file
#'
#' @param p the ggplot plot object
#' @param file a string, the name/path of the PNG file to save
#' @param width width in px of the output figure
#' @param height height in px of the output figure
#' @param res resolution of the output
#' @examples
#' library(ggplot2)
#' p <- ggplot(mapping = aes(x = rand(100), y = rand(100)))
#' plot_PNG(p, "sample.PNG")
#'
#' @import ggplot2
#' @importFrom grDevices dev.off png
#' @export

plot_PNG <- function(p, file, width = 3000, height = 3000, res = 300) {
  png(file, width = width, height = height, units = "px", res = 300)
  print(p)
  dev.off()
}
