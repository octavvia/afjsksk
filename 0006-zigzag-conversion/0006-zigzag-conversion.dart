class Solution {
  String? convert(String s, int numRows) {
    if (numRows == 1 || s.length == 1) return s;

    List<String> rows = List.generate(numRows, (_) => '');
    int currentRow = 0;
    bool isDownward = false;

    for (int i = 0; i < s.length; i++) {
      rows[currentRow] += s[i];

      if (currentRow == 0 || currentRow == numRows - 1) {
        isDownward = !isDownward;
      }

      currentRow += isDownward ? 1 : -1;
    }

    return rows.join('');
  }
}
