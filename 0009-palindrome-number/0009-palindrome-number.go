func isPalindrome(x int) bool {
    if x < 0 {
        return false
    }

    if x < 10{
        return true
    }

    if x%10 == 0 {
        return false
    }

    part := 0
    for x > 0 {
        part = part*10+x%10
        x /= 10

        if part == x || part == x/10 {
            return true
        }
    }

    return false
}