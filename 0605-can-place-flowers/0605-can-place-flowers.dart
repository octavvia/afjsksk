class Solution {
  bool canPlaceFlowers(List<int> flowerbed, int n) {
    if(n == 0) return true;
    String str = '0${flowerbed.join()}0';
    final length = str.length;
    int index = 0;

    while(index < length) {
      index = str.indexOf('000', index);
      if(index < 0) break;
      index += 2;
      n--;
      if(n <= 0) return true;
    }

    return n <= 0;
  }
}