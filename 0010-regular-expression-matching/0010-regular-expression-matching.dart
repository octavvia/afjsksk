class Solution {
  bool isMatch(String s, String p) {
    if (p.isEmpty) {
      return s.isEmpty;
    }
    bool firstMatch = s.isNotEmpty && (p[0] == s[0] || p[0] == '.');

    if (p.length >= 2 && p[1] == '*') {
      return (isMatch(s, p.substring(2)) || (firstMatch && isMatch(s.substring(1), p)));
    } else {
      return firstMatch && isMatch(s.substring(1), p.substring(1));
    }
  }
}