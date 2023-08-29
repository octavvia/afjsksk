class Solution {
  bool isSubsequence(String s, String t) {
      int index = 0;

      if(s.length > 0){
      for(int i = 0; i < t.length; i++){
        if(s.length > index && s[index] == t[i]){ 
            index++;
        }
      }
      return s.length == index;
      }
      return true;
  }
}