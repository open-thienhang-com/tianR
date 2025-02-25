# Define a numeric vector (including NA values)
x <- c(2, NA, 3, 1, 4)

sum_x <- sum(x, na.rm = TRUE)  

mean_x <- mean(x, na.rm = TRUE)  

# Tính tích của các phần tử
prod_x <- prod(x, na.rm = TRUE)

print(paste("Sum:", sum_x))
print(paste("Mean:", mean_x))
print(paste("Product:", prod_x))
