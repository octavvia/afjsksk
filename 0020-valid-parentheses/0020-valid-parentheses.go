var closingToOpening = map[byte]byte {
    ')': '(',
    '}': '{',
    ']': '[',
}

func isValid(str string) bool {
    s := []byte(str)
    stack := make([]byte, 0)

    for _, ch := range s {
        matchingOpening, isClosing := closingToOpening[ch]

        if !isClosing { // it's opening
            stack = append(stack, ch)
            continue
        }

        if len(stack) == 0 { // closing, but no opening at all
            return false
        }

        lastOpening := stack[len(stack) - 1]
        stack = stack[:len(stack) - 1] // "remove" it

        if lastOpening != matchingOpening {
            return false
        }
    }

    return len(stack) == 0
}