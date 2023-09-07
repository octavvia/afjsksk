class Solution {
// Runtime: 512 ms, faster than 50.00% of Dart online submissions for Excel Sheet Column Title.
// Memory Usage: 141.5 MB, less than 50.00% of Dart online submissions for Excel Sheet Column Title.

  String convertToTitle(int columnNumber) {
    List<int> arr = List.filled(10000, 0);
    int i = 0;

    // Step 1: Converting to number assuming
    // 0 in number system
    while (columnNumber > 0) {
      arr[i] = columnNumber % 26;
      columnNumber = columnNumber ~/ 26;
      i++;
    }

    // Step 2: Getting rid of 0, as 0 is
    // not part of number system
    for (int j = 0; j < i - 1; j++) {
      if (arr[j] <= 0) {
        arr[j] += 26;
        arr[j + 1] = arr[j + 1] - 1;
      }
    }
    String ans = '';
    for (int j = i; j >= 0; j--) {
      if (arr[j] > 0) ans += String.fromCharCode(65 + arr[j] - 1);
    }

    return ans;
  }
}