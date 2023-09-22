class Solution {
  int maxArea(List<int> height) {
    var l = 0, r = height.length - 1;
    var result = 0;
    while (l < r) {
      result = max(result, min(height[l], height[r]) * (r - l));
      if (height[l] < height[r]) {
        l++;
      } else {
        r--;
      }
    }
    return result;
  }
}