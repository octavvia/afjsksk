// Define the Solution class
class Solution {

  // Define the combine function which takes in n and k as parameters and returns the result List
  List<List<int>> combine(int n, int k) {
    
    // Initialize an empty result List
    List<List<int>> result = [];

    // Initialize an empty current List
    List<int> current = [];

    // Call the addNumber function with the given parameters
    addNumber(n, k, 1, current, result);

    // Return the result List
    return result;
  }

  // Define the addNumber function which takes in n, k, start, current and matrix as parameters
  void addNumber(int n, int k, int start, List<int> current, List<List<int>> matrix){
    
    // If the current List has a length equal to k, add it to the result List and return
    if (current.length == k) {
      matrix.add([...current]);
      return;
    }

    // Loop through the numbers from start to n
    for (var i = start; i <= n; i++) {
      
      // Add the current number to the current List
      current.add(i);

      // Recursively call the addNumber function with the next number as the start parameter
      addNumber(n, k, i + 1, current, matrix);

      // Remove the last number from the current List
      current.removeLast();
    }
  }
}