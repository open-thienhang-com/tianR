# Load the iris dataset
data(iris)

# Step 1: Basic scatter plot with title and axis labels
plot(iris$Petal.Length, iris$Petal.Width,
     main = "Anderson Iris data",
     xlab = "Petal length (cm)",
     ylab = "Petal width (cm)",
     col = iris$Species,
     pch = 16)
