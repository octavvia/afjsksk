/// jadi ini intinya ada pembagian 2 string yang harus sama atau modulonya bernilai 0


class Solution {
  bool repeatedSubstringPattern(String s) {   // output yang diminta true or false
  int n = s.length; // kalo n adalah panjang string maka 
  for (int i = 1; i < n; i++) { // dengan perulangan yang i++ atau bertambah
    if (n % i == 0 && s.substring(0, i) * (n ~/ i) == s) { // kalau modulo n adalah 0 dan 
    // s.substring(0,i) maksudnya adalah untuk mendapatkan substring pertama 
      return true; // maka kembaliannya adalah true
    }
  }
  return false; //selain itu maka false
  }
}
