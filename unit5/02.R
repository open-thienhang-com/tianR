library(scatterplot3d)

# Load the iris dataset
data(iris)
print(head(iris))

shapes <- c(16, 17, 18) # Use squares, triangles, and circles based on species.

species_factor <- as.numeric(iris$Species)

# Create a basic 3D scatter plot
scatterplot3d(
    iris$Sepal.Length,
    iris$Sepal.Width,
    iris$Petal.Length,
    main = "3D Scatter Plot",
    xlab = "Sepal Length (cm)",
    ylab = "Sepal Width (cm)",
    zlab = "Petal Length (cm)",
    pch = shapes[species_factor]
)
