# Step 1: Histogram of 1000 random numbers from the standard normal distribution
set.seed(123)  # Set seed for reproducibility
x <- rnorm(1000)  # Generate 1000 random numbers from standard normal distribution
hist(x, breaks=50, main="Histogram of Standard Normal Distribution", col="lightblue")

# Step 2: Histogram of 1000 samples of size 20 from the standard normal distribution
set.seed(123)
x_matrix <- matrix(rnorm(1000 * 20), nrow=1000, ncol=20)  # Create a 1000x20 matrix
x_means <- rowMeans(x_matrix)  # Compute means of each sample
hist(x_means, breaks=50, main="Histogram of Sample Means (Normal Distribution)", col="lightgreen")

# Step 3: Histogram of 1000 random numbers from an exponential distribution (lambda = 0.6)
set.seed(123)
x_exp <- rexp(1000, rate=0.6)  # Generate 1000 random numbers from exponential distribution
hist(x_exp, breaks=50, main="Histogram of Exponential Distribution", col="lightcoral")

# Step 4: Histogram of 1000 samples of size 20 from the exponential distribution (lambda = 0.6)
set.seed(123)
x_exp_matrix <- matrix(rexp(1000 * 20, rate=0.6), nrow=1000, ncol=20)  # Create a 1000x20 matrix
x_exp_means <- rowMeans(x_exp_matrix)  # Compute means of each sample
hist(x_exp_means, breaks=50, main="Histogram of Sample Means (Exponential Distribution)", col="gold")
