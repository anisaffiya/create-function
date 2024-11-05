install.packages("ggplot2")
library(ggplot2)

create_scatter_plot <- function(data, x_var, y_var) {

  plot <- ggplot(data, aes_string(x = x_var, y = y_var)) +
    geom_point() +
    labs(
      title = paste("Scatter plot of", x_var, "and", y_var),
      x = x_var,
      y = y_var)

  print(plot)
}

data <- data.frame(x = rnorm(200), y = rnorm(100))

create_scatter_plot(data, "x", "y")

