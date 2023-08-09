class Solution {
  int search(List<int> nums, int target) {
    int low = 0, high = nums.length - 1;
    bool targetI = target >= nums[0];
    while(low <= high) {
        int mid = (low + (high - low) / 2).toInt();
        bool midI = nums[mid] >= nums[0];
        if(midI && !targetI) low = mid + 1;
        else if(!midI && targetI) high = mid - 1;
        else if(nums[mid] < target) low = mid + 1;
        else if(nums[mid] > target) high = mid - 1;
        else return mid;
    }
    return -1;
  }
}