class Solution {
  int threeSumClosest(List<int> nums, int target) {
    int closest = (nums[0] + nums[1] + nums[2] - target).abs(); 
    int val = nums[0] + nums[1] + nums[2];
    for(int i = 0 ; i < nums.length ; ++i){
      for(int x = i + 1; x < nums.length ; ++x){
        for(int z = x + 1; z < nums.length ; ++z){
          if((nums[i] + nums[x] + nums[z] - target).abs() < closest){
            closest = (nums[i] + nums[x] + nums[z] - target).abs();
            val = nums[i] + nums[x] + nums[z];
          }
        }
      }
    }
    return val;
  }
}