#' Custom colors
#'
#' @param tbl The data.frame or tibble used to plot
#' @param var_p The column containing p-value
#' @param var_x The column used for x-axis
#' @examples
#' plot_manhattan(data.frame(a = sample(seq(0, 1, 0.1), 10), b = 1:10), a, b)
#'
#' @import ggplot2
#' @import dplyr
#' @importFrom rlang enquo
#'
#' @export

plot_manhattan <- function(tbl, var_p, var_x) {
  var_p <- enquo(var_p)
  var_x <- enquo(var_x)
  p_threshold <- 0.05 / nrow(tbl)
  p_value <- tbl %>%
    pull(!!var_p)
  i_sig <- p_value < p_threshold

  tbl %>%
    ggplot(mapping = aes(x = !!var_x, y = - log(!!var_p, base = 10))) +
    geom_point(mapping = aes(color = i_sig)) +
    geom_hline(yintercept = - log(p_threshold, base = 10),
               linetype = "dashed") +
    theme_bw() +
    labs(x = "",
         y = "") +
    scale_color_manual(values = lin_color("ousi", "yanzhichong"))
}

