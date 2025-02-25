x <- c(1, 3, 5, 7, 9, 11, 13, 15, 17)

sample_2 <- sample(x, 2)

shuffled_x <- sample(x)

sample_with_replacement <- sample(x, replace = TRUE)

sample_10 <- sample(10)

coin_toss <- sample(c("H", "T"), 10, replace = TRUE)

print(paste("Sample 2 items:", paste(sample_2, collapse = " ")))
print(paste("Shuffled x:", paste(shuffled_x, collapse = " ")))
print(paste("Sample with replacement:", paste(sample_with_replacement, collapse = " ")))
print(paste("Sample from 1:10:", paste(sample_10, collapse = " ")))
print(paste("Coin toss results:", paste(coin_toss, collapse = " ")))
