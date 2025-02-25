# Take input from the user
num <- as.integer(readline(prompt = "Enter a number: "))

if (!is.na(num) && num > 0) {
    sum <- (num * (num + 1)) / 2 
    print(paste("The sum is", sum))
} else {
    print("Please enter a valid positive integer.")
}