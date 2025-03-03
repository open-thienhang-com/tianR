library(scatterplot3d)

# Load the iris dataset
data(iris)
print(head(iris))

# Define colors based on species
colors <- c("black", "gold", "blue")
species_factor <- as.numeric(iris$Species)
colors_species <- colors[species_factor]

# Create a 3D scatter plot with points in different colors and vertical lines
s3d <- scatterplot3d(
    iris$Sepal.Length,
    iris$Sepal.Width,
    iris$Petal.Length,
    pch = 16,
    main = "3D Scatter Plot",
    xlab = "Sepal Length (cm)",
    ylab = "Sepal Width (cm)",
    zlab = "Petal Length (cm)",
    color = colors_species,
    angle = 55,
    type = "h"
)

