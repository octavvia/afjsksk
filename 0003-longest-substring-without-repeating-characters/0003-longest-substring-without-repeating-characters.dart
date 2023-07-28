class Solution {
  int lengthOfLongestSubstring(String s) {
    var input = s;
    Set<String> letters = {};
    int maxSubString = 0;
    for (var i = 0; i < input.length; i++) {

      while (letters.contains(input[i])) {
        letters.remove(letters.first);
      }
      letters.add(input[i]);
      if (letters.length > maxSubString) {
        maxSubString = letters.length;
      }
    }
    print('$letters, ${maxSubString}');
    return maxSubString;
  
}}