library(ggplot2)
set.seed(123)

data <- data.frame(values = rexp(1000, rate = 0.6))

histogram <- ggplot(data, aes(x = values)) +
  geom_histogram(aes(fill = ifelse(values > -1.669 & values < 1.669, "red", "blue")),
    bins = 50, # brakes -> bins
    col = "black", position = "identity"
  ) +
  scale_fill_manual(values = c("blue", "red")) +
  labs(title = "Histogram of X", x = "X", y = "Frequency")

# Print the histogram
print(histogram)
