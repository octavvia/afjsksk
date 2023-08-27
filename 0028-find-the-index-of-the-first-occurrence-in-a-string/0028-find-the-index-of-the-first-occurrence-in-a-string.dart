class Solution {
  int strStr(String haystack, String needle) {
      //Check if the haystack bigger than needle, if not return -1.
    if(needle.length > haystack.length){
        return -1;
     }
    var result = -1;
    //After that iterate over all of the characters in haystack
    for (int i = 0; i < haystack.length; i++){
        //Find the same as first needle character
      if (haystack[i] == needle[0]){
        var index = i;
        var j = 0;
        if (haystack.length - i >= needle.length){
        //Start looking for others
        while (haystack[index] == needle[j]){
          if (j == needle.length - 1){
            return i;
          }
        index++;
        j++;
        }
        }
        
      }
}
    return result;
  }
}