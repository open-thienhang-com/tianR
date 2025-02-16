# Load required library
library(ggplot2)
set.seed(123)

# Plot a histogram of 1000 random numbers from the standard normal distribution. (Keep breaks=50 and the Z Score=1.669)
data <- data.frame(values = rnorm(1000))

histogram <- ggplot(data, aes(x = values)) +
  geom_histogram(aes(fill = ifelse(values > -1.669 & values < 1.669, "red", "blue")), bins = 50, #brakes -> bins
                 col = "black", position = "identity") +
  scale_fill_manual(values = c("blue", "red")) + 
  labs(title = "Histogram of X", x = "X", y = "Frequency")

# Print the histogram
print(histogram)
