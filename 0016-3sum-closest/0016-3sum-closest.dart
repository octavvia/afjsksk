class Solution {
    int threeSumClosest(List<int> nums, int target) {
      nums.sort();
      List<int> res = [];
      int l;
      int r;
      int first;
      int sum = 0;
      while(nums.length > 2){
          first = nums.removeAt(0);
          l = 0;
          r = nums.length-1;
          while (l < r){
            sum = first + nums[l] + nums[r];
            if(sum == target){
                return sum;
            }
            sum < target ? l++: r--;
            res.add(sum);
          }

      }
      return res.reduce((prev,curr)=> 
             (curr-target).abs() < (prev-target).abs() ? curr: prev);
    }
}