class Solution {
  bool exist(List<List<String>> board, String word) {
    final rows = board.length;
    final cols = board[0].length;

    // Store cell of the path we are checking
    // So we don't use the same cell twice
    final path = <(int r, int c)>{};

    bool dfs(int r, int c, [int i = 0]){
      // We've found the [word]
      if (i == word.length) return true;
      // Check out of bounds
      if (r < 0 || c < 0 || r >= rows || c >= cols) return false;
      // Check if it's not the character we're looking for
      if (board[r][c] != word[i]) return false;
      // Check if we've already used this cell as part of the word search
      if (path.contains((r, c))) return false;

      path.add((r, c));        
    
      final upHasNext = dfs(r - 1, c, i + 1);
      final downHasNext = dfs(r + 1, c, i + 1);
      final leftHasNext = dfs(r, c - 1, i + 1);
      final rightHasNext = dfs(r, c + 1, i + 1);

      // Remove so we can use this cell in another path if this path fails to find our [word]
      path.remove((r, c));

      return upHasNext || downHasNext || leftHasNext || rightHasNext;
    }

    // Iterate through each cell looking for the first character of [word] to start the dfs
    for (int r = 0; r < rows; r++){
      for (int c = 0; c < cols; c++){
        if (board[r][c] == word[0] && dfs(r, c)) return true;
      }
    }

    return false;
  }
}