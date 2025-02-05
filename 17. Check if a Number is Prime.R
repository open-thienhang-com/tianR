is_prime <- function(num) {
    if (num <= 1) {
        return(FALSE)  
    }
    if (num == 2) {
        return(TRUE)  
    }
    # Kiểm tra từ 2 đến sqrt(num)
    for (i in 2:floor(sqrt(num))) {
        if (num %% i == 0) {
            return(FALSE) 
        }
    }
    return(TRUE)  
}

num <- as.integer(readline(prompt = "Enter a number: "))

if (is_prime(num)) {
    print(paste(num, "is a prime number"))
} else {
    print(paste(num, "is not a prime number"))
}
