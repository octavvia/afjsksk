class Solution {
  List<int> twoSum(List<int> nums, int target) {
    Map<int, int> arrayMap = {};

    for (int i = 0; i < nums.length; i++) {
      final int complement = target - nums[i];

      if (arrayMap.containsKey(complement)) {
        return [arrayMap[complement]!, i];
      }

      arrayMap[nums[i]] = i;
    }

    return [];
  }
}
