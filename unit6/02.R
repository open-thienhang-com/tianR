# Load the iris dataset
data(iris)

# Step 1: Basic scatter plot with title and axis labels
plot(iris$Petal.Length, iris$Petal.Width,
     main = "Anderson Iris data",
     xlab = "Petal length (cm)",
     ylab = "Petal width (cm)",
     col = iris$Species,
     pch = 16)


# Step 2: Add horizontal and vertical lines for mean and median
mean_length <- mean(iris$Petal.Length)
mean_width <- mean(iris$Petal.Width)
median_length <- median(iris$Petal.Length)
median_width <- median(iris$Petal.Width)

# Plot the scatter plot
plot(iris$Petal.Length, iris$Petal.Width,
     main = "Anderson Iris data",
     xlab = "Petal length (cm)",
     ylab = "Petal width (cm)",
     col = iris$Species,
     pch = 16)

# Add horizontal and vertical lines for mean and median
abline(h = mean_width, col = "blue", lty = 2)  # Horizontal line at mean
abline(h = median_width, col = "red", lty = 2) # Horizontal line at median
abline(v = mean_length, col = "blue", lty = 2) # Vertical line at mean
abline(v = median_length, col = "red", lty = 2) # Vertical line at median

# Add centroids as red and blue points
centroids <- aggregate(cbind(Petal.Length, Petal.Width) ~ Species, data = iris, FUN = mean)
points(centroids$Petal.Length[1], centroids$Petal.Width[1], col = "red", pch = 16)   # Setosa
points(centroids$Petal.Length[2], centroids$Petal.Width[2], col = "blue", pch = 16)  # Versicolor
points(centroids$Petal.Length[3], centroids$Petal.Width[3], col = "green", pch = 16) # Virginica
