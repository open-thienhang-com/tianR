gcd <- function(x, y) {
    while(y != 0) {
        temp <- y
        y <- x %% y
        x <- temp
    }
    return(x)
}

lcm <- function(x, y) {
    return((x * y) / gcd(x, y))
}

num1 <- as.integer(readline(prompt = "Enter first number: "))
num2 <- as.integer(readline(prompt = "Enter second number: "))

print(paste("The L.C.M. of", num1, "and", num2, "is", lcm(num1, num2)))
