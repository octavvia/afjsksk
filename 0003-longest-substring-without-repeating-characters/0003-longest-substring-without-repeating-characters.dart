class Solution {
  // int merupakan bentuk pengembalian  dengan inputan sebuah string 
  int lengthOfLongestSubstring(String s) {
    // input berupa string yang diwakilkan s
    var input = s;
    // dan letter
    Set<String> letters = {};
    // maxSubstringnya bernilai 0
    int maxSubString = 0;
    // 
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