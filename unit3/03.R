# Sample sizes to compare
sample_sizes <- c(10, 100, 10000)
# parameters of the normal distribution
mu <- 180
sd <- 20
# number of sd's for histogram display
sdd <- 3.5

# Number of rows and columns for the plot layout
num_rows <- 2
num_cols <- 3

# Set up graphic display
par(mfrow = c(num_rows, num_cols))

for (i in 1:(num_rows * num_cols)) {
    n <- 30 # Keep sample size consistent
    bin.width <- sd / 3
    x.min <- mu - (sdd * sd)
    x.max <- mu + (sdd * sd)
    y.max <- n * 0.5 * bin.width / sd

    # Generate random sample
    v <- rnorm(n, mu, sd)

    # Plot histogram
    hist(v,
        xlim = c(x.min, x.max), ylim = c(0, y.max),
        breaks = seq(mu - 5 * sd, mu + 5 * sd, by = bin.width),
        main = paste("Sample", i), xlab = "Values"
    )

    x <- seq(x.min, x.max, length = 120)

    # True normal distribution
    points(x, dnorm(x, mu, sd) * (n * bin.width),
        type = "l", col = "blue", lty = 1, lwd = 1.8
    )

    # Estimated normal distribution from sample
    points(x, dnorm(x, mean(v), sd(v)) * (n * bin.width),
        type = "l", col = "red", lty = 2, lwd = 1.8
    )

    # Print sample parameters
    text(x.min, 0.9 * y.max, paste("mean:", round(mean(v), 2)), pos = 4)
    text(x.min, 0.8 * y.max, paste("sdev:", round(sd(v), 2)), pos = 4)
    text(x.min, 0.7 * y.max, paste("Pr(t):", round((t.test(v, mu = mu))$p.value, 2)), pos = 4)
}

# Reset display to default
par(mfrow = c(1, 1))
