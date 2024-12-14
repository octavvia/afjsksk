class Solution {
  int removeDuplicates(List<int> nums) {
    int pre = -1000000000,res = 0;
    bool cu = false;
    for(int i in nums){
      if(cu&&pre==i)continue;
      cu = pre == i;
      pre = i;
      nums[res++] = i;
    }
    return res;
  }
}