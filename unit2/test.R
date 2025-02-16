

X2 <- matrix(rnorm(1000 * 20), nrow=1000, ncol=20)

# Compute the means of each sample
sample_means_2 <- rowMeans(X2)

# Convert to dataframe for ggplot2
data2 <- data.frame(means = sample_means_2)

# Plot histogram of sample means
histogram2 <- ggplot(data2, aes(x = means)) +
  geom_histogram(bins = 50, fill = "blue", color = "black") +
  labs(title = "Histogram of Sample Means (Normal Distribution)", x = "Sample Mean", y = "Frequency") +
  theme_minimal()


print(histogram2)