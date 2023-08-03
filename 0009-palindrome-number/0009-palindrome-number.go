func isPalindrome(x int) bool {
    int_string := strconv.Itoa(x)
    n := len(int_string)
    for i := 0; i < len(int_string)/2; i++ {
        if rune(int_string[i]) != rune(int_string[n - 1 - i]) {
            return false
        }
    }
    return true
}