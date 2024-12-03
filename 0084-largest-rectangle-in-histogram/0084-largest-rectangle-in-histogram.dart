class Solution {
  int largestRectangleArea(List<int> heights) {
    final stack = <int>[];
    int maxArea = 0;
    int i = 0;

    while (i <= heights.length) {
        final currentHeight = i == heights.length ? 0 : heights[i];
        if (stack.isEmpty || currentHeight >= heights[stack.last]) {
            stack.add(i);
            i++;
        } else {
            final popped = stack.removeLast();
            final width = stack.isEmpty ? i : i - stack.last - 1;
            final currentArea = heights[popped] * width;
            if (currentArea > maxArea) maxArea = currentArea;
        }
    }
    
    return maxArea;
  }
}