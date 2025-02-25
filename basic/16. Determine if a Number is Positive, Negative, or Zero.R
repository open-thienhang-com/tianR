# Nhập số từ người dùng
num = as.double(readline(prompt="Enter a number: "))

# Kiểm tra nếu số dương, âm hoặc bằng 0
if (num > 0) {
    print("Positive number")
} else {
    if (num == 0) {
        print("Zero")
    } else {
        print("Negative number")
    }
}
