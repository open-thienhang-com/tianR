
hcf <- function(x, y) {
    if(x > y) {
        smaller = y
    } else {
        smaller = x
    }

    for(i in 1:smaller) {
        if((x %% i == 0) && (y %% i == 0)) {
            hcf = i
        }
    }
    return(hcf)
}

hcf2 <- function(x, y) {
    while(y != 0) {
        temp <- y
        y <- x %% y
        x <- temp
    }
    return(x)
}

num1 <- as.integer(readline(prompt = "Enter first number: "))
num2 <- as.integer(readline(prompt = "Enter second number: "))

print(paste("The H.C.F. of", num1, "and", num2, "is", hcf(num1, num2)))

print(paste("[Euclid]: The H.C.F. of", num1, "and", num2, "is", hcf2(num1, num2)))



