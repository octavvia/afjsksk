   func myAtoi(s string) int {
    
    var temp string = strings.TrimLeft(s, " ")
    
  	re, _ := regexp.Compile(`^[-|+]?[0-9]+`)
    
    if re == nil {
    return 0
    }
    
    ans, _:= strconv.Atoi(re.FindString(temp))
    
    if ans <  math.MaxInt32 && ans > math.MinInt32 {
        return ans
    }
    if ans <= math.MinInt32 {
		return math.MinInt32
	}
		return math.MaxInt32
}