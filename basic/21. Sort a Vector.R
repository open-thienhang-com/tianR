
x <- c(7, 1, 8, 3, 2, 6, 5, 2, 2, 4)

sorted_x_asc <- sort(x)

sorted_x_desc <- sort(x, decreasing = TRUE)

index_asc <- order(x)

index_desc <- order(x, decreasing = TRUE)

sorted_x_by_index <- x[index_asc]

print(paste("Original vector:", paste(x, collapse = " ")))
print(paste("Sorted (ascending):", paste(sorted_x_asc, collapse = " ")))
print(paste("Sorted (descending):", paste(sorted_x_desc, collapse = " ")))
print(paste("Order index (ascending):", paste(index_asc, collapse = " ")))
print(paste("Order index (descending):", paste(index_desc, collapse = " ")))
print(paste("Sorted using order():", paste(sorted_x_by_index, collapse = " ")))
