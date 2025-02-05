# Program to find the sum of natural numbers up to n using recursion

calculate_sum <- function(n) {
    if (n == 0) {
        return(0)  
    } else {
        return(n + calculate_sum(n - 1))
    }
}

# Take input from the user
num <- as.integer(readline(prompt = "Enter a number: "))

if (!is.na(num) && num > 0) {
    sum <- calculate_sum(num) 
    print(paste("The sum is", sum))
} else {
    print("Please enter a valid positive integer.")
}
