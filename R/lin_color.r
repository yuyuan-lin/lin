#' Custom colors
#'
#' @param ... The color name(s) to use. If left blank, it will return the entire my_color vector
#' @examples
#' plot(rnorm(100), col = lin_color("yanzhichong"))
#'
#' @importFrom grDevices rgb
#'
#' @export

lin_color <- function(...) {
  cols <- c(...)

  # self-define color
  my_color <- c(
    yanzhichong = rgb(red = 171, green = 029, blue = 034, maxColorValue = 255),
    facui = rgb(red = 016, green = 139, blue = 150, maxColorValue = 255),
    huangbulao = rgb(red = 219, green = 155, blue = 052, maxColorValue = 255),
    luozidai = rgb(red = 19, green = 57, blue = 62, maxColorValue = 255),
    qingdai = rgb(red = 69, green = 70, blue = 94, maxColorValue = 255)
  )

  # output color value according to call
  if (is.null(cols))
    return(unname(my_color))
  else
    return(unname(my_color[cols]))
}
