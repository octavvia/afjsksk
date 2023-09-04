class Solution {
  void moveZeroes(List<int> nums) {
    int nonZeroIndex = 0;

    for (int i = 0; i < nums.length; i++) {
      if (nums[i] != 0) {
        // Swap non-zero value to the front
        int temp = nums[nonZeroIndex];
        nums[nonZeroIndex] = nums[i];
        nums[i] = temp;
        nonZeroIndex++;
      }
    }
  }
}
