# Program to convert decimal number into binary number using recursive function
convert_to_binary <- function(n) {
  if (n > 1) {
    convert_to_binary(as.integer(n / 2))  # Recursive call
  }
#   print(paste("n:", n, "n %% 2:", n %% 2))  # Print the number and its remainder
  cat(n %% 2)  # Print the remainder (either 0 or 1)
}

# Test the function with a decimal number
convert_to_binary(52)
