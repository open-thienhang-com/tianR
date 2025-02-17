# Sample size
n <- 30
# parameters of the normal distribution
mu <- 180
sd <- 20
# number of sd's for histogram display
sdd <- 3.5
# compute bin width from sd and the number of bars
bin.width <- sd / 3

# set up graphic display for 3 plots in a row
par(mfrow = c(1, 3))

for (i in 1:3) {
    # scale x-axis
    x.min <- mu - (sdd * sd)
    x.max <- mu + (sdd * sd)
    # scale y-axis
    y.max <- n * 0.5 * bin.width / sd

    # generate random sample
    v <- rnorm(n, mu, sd)

    # plot histogram
    hist(v,
        xlim = c(x.min, x.max), ylim = c(0, y.max),
        breaks = seq(mu - 5 * sd, mu + 5 * sd, by = bin.width),
        main = paste("mu = ", mu, ", sigma = ", sd), xlab = paste("Sample ", i)
    )

    # generate x values for curves
    x <- seq(x.min, x.max, length = 120)

    # true normal distribution
    points(x, dnorm(x, mu, sd) * (n * bin.width),
        type = "l", col = "blue", lty = 1, lwd = 1.8
    )

    # estimated normal distribution from sample
    points(x, dnorm(x, mean(v), sd(v)) * (n * bin.width),
        type = "l", col = "red", lty = 2, lwd = 1.8
    )

    # print sample parameters
    text(x.min, 0.9 * y.max, paste("mean:", round(mean(v), 2)), pos = 4)
    text(x.min, 0.8 * y.max, paste("sdev:", round(sd(v), 2)), pos = 4)
    text(x.min, 0.7 * y.max, paste("Pr(t):", round((t.test(v, mu = mu))$p.value, 2)), pos = 4)
}

# reset display to default
par(mfrow = c(1, 1))
