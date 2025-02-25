uniform_1 <- runif(1)
uniform_3 <- runif(3)
uniform_range <- runif(3, min=5, max=10)

normal_1 <- rnorm(1) 
normal_3 <- rnorm(3) 
normal_custom <- rnorm(3, mean=10, sd=2) 

print(paste("Uniform (1 number):", uniform_1))
print(paste("Uniform (3 numbers):", paste(uniform_3, collapse = " ")))
print(paste("Uniform (range 5-10):", paste(uniform_range, collapse = " ")))

print(paste("Normal (1 number):", normal_1))
print(paste("Normal (3 numbers):", paste(normal_3, collapse = " ")))
print(paste("Normal (mean=10, sd=2):", paste(normal_custom, collapse = " ")))
