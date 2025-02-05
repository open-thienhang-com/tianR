recurse_fibonacci <- function(n) {
    if (n == 0) {
        return(0)
    } else if (n == 1) {
        return(1)
    } else {
        return(recurse_fibonacci(n-1) + recurse_fibonacci(n-2))
    }
}

nterms = as.integer(readline(prompt="How many terms? "))


if(nterms <= 0) {
    print("Please enter a positive integer.")
} else {
    print("Fibonacci sequence:")
    for(i in 0:(nterms-1)) {
        print(recurse_fibonacci(i))
    }
}
