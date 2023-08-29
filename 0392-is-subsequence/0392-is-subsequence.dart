class Solution {
  bool isSubsequence(String s, String t) {
      int index = 0; 

      if(s.length > 0){ // kalau panjang string lebih dari 0 maka ke step lanjutnya
      for(int i = 0; i < t.length; i++){ // menggunakan pengulangan integer dengan batas maksimum panjang i dan pengulangan naik
        if(s.length > index && s[index] == t[i]){ // jika panjang s lebih dari x dan index s sama dengan index i
            index++;
        }
      }
      return s.length == index; // dikembalikan dalam panjang s yang berupa index
      }
      return true;
  }
}