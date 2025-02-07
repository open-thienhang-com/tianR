# Step 1: Histogram of 1000 random numbers from standard normal distribution
set.seed(123) # Set seed for reproducibility
X1 <- rnorm(1000)
hist(X1, breaks = 50, col = "lightblue", main = "Histogram of 1000 Standard Normal Samples", xlab = "Value", ylab = "Frequency")
abline(v = 1.669, col = "red", lwd = 2) # Adding Z-score line

# Step 2: Histogram of means from 1000 samples of size 20
set.seed(123)
X2 <- matrix(rnorm(1000 * 20), nrow = 1000, ncol = 20) # 1000 rows, each with 20 samples
sample_means <- rowMeans(X2) # Calculate mean of each row (sample)
hist(sample_means, breaks = 50, col = "lightgreen", main = "Histogram of Sample Means", xlab = "Mean Value", ylab = "Frequency")

# Step 3: Histogram of 1000 random numbers from exponential distribution (lambda=0.6)
set.seed(123)
X3 <- rexp(1000, rate = 0.6)
hist(X3, breaks = 50, col = "lightcoral", main = "Histogram of 1000 Exponential Samples", xlab = "Value", ylab = "Frequency")

# Step 4: Histogram of means from 1000 samples of size 20 from an exponential distribution
set.seed(123)
X4 <- matrix(rexp(1000 * 20, rate = 0.6), nrow = 1000, ncol = 20)
sample_means_exp <- rowMeans(X4)
hist(sample_means_exp, breaks = 50, col = "gold", main = "Histogram of Sample Means from Exponential Distribution", xlab = "Mean Value", ylab = "Frequency")
