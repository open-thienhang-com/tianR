x <- c(5, 8, 3, 9, 2, 7, 4, 6, 10)

min_value <- min(x)
print(paste("The minimum value is:", min_value))

max_value <- max(x)
print(paste("The maximum value is:", max_value))

range_values <- range(x)
print(paste("The range is:", paste(range_values, collapse = " to ")))

min_index <- which.min(x)
print(paste("The index of the minimum value is:", min_index))

max_index <- which.max(x)
print(paste("The index of the maximum value is:", max_index))


min_value_from_index <- x[min_index]
print(paste("The minimum value (using index) is:", min_value_from_index))
