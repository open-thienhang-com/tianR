library(ggplot2)

set.seed(123)

X <- matrix(rnorm(1000 * 20), nrow = 1000, ncol = 20)

data_no_mean <- data.frame(values = as.vector(X))

histogram <- ggplot(data_no_mean, aes(x = values)) +
  geom_histogram(aes(fill = ifelse(values > -1.669 & values < 1.669, "red", "blue")),
    bins = 50,
    col = "black", position = "identity"
  ) +
  scale_fill_manual(values = c("blue", "red")) +
  labs(title = "Histogram of X", x = "X", y = "Frequency") +
  theme_minimal()

print(histogram)
