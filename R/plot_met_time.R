#' Custom colors
#'
#' @param tbl The data.frame or tibble used to plot
#' @param var_met Metabolomics feature
#' @param var_time Time variable
#' @param var_color Color variable in the plot
#' @param time_cutoff Time threshold (a vertical line) in plot
#' @examples
#' plot_met_time(data.frame(a = rnorm(10), b = 1:10), a, b)
#'
#' @import ggplot2
#' @import dplyr
#' @importFrom rlang enquo
#'
#' @export

plot_met_time <- function(tbl, var_met, var_time,
                          var_color = NULL, time_cutoff = NULL) {
  var_met <- enquo(var_met)
  var_time <- enquo(var_time)
  var_color <- enquo(var_color)
  time_cutoff <- as.POSIXct(time_cutoff)

  tbl %>%
    ggplot(mapping = aes(x = !!var_time, y = !!var_met)) +
    geom_point(mapping = aes(color = !!var_color)) +
    geom_vline(xintercept = time_cutoff, linetype = "dashed") +
    theme_bw() +
    labs(x = "Sampling date",
         y = "Metabolite feature intensity") +
    scale_color_manual(values = lin_color())
}

