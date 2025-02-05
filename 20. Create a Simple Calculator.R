add <- function(a, b) {
    return(a + b)
}

subtract <- function(a, b) {
    return(a - b)
}

multiply <- function(a, b) {
    return(a * b)
}

divide <- function(a, b) {
    if (b == 0) {
        return("Error: Division by zero is not allowed.")
    }
    return(a / b)
}

print("Select operation.")
print("1. Add")
print("2. Subtract")
print("3. Multiply")
print("4. Divide")

choice <- as.integer(readline(prompt = "Enter choice [1/2/3/4]: "))

num1 <- as.numeric(readline(prompt = "Enter first number: "))
num2 <- as.numeric(readline(prompt = "Enter second number: "))

result <- switch(choice,
                 add(num1, num2),
                 subtract(num1, num2),
                 multiply(num1, num2),
                 divide(num1, num2))

# Hiển thị kết quả
if (!is.null(result)) {
    print(paste(num1, c("+", "-", "*", "/")[choice], num2, "=", result))
} else {
    print("Invalid input. Please enter a valid choice (1/2/3/4).")
}
