library(scatterplot3d)

# Load the iris dataset
data(iris)
print(head(iris))

# Define colors based on species
colors <- c("blue", "gold", "black")
species_factor <- as.numeric(iris$Species)
colors_species <- colors[species_factor]

# Create a 3D scatter plot with vertical lines
s3d <- scatterplot3d(iris$Petal.Length, iris$Sepal.Length, iris$Sepal.Width,
    main = "3D Scatter Plot",
    xlab = "Petal Length (cm)",
    ylab = "Sepal Length (cm)",
    zlab = "Sepal Width (cm)",
    color = colors_species,
    angle = 55
)


# Add supplementary points in red
s3d$points3d(seq(1, 6, 1), seq(4, 8, 0.8), seq(2, 4.5, 0.5),
    col = "red", type = "h", pch = 8
)
