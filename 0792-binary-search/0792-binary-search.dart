class Solution {
  int search(List<int> nums, int target) { 
    // binarySearch dengan inputan nums, target, 0 dsb
  return binarySearch(nums, target, 0, nums.length -1);
  }
  
 int binarySearch(List<int> arr, int val, int min, int max){
   // jika nilai max 
     if(max >= min ){
       // mid 
      int mid = ((max + min) / 2).floor();
      // jika array
      if(arr[mid] == val) {
        return mid;
      }
      else if(val > arr[mid]){
        return binarySearch(arr, val, mid +1, max);
      } else {
        return  binarySearch(arr, val, min, mid-1);
      }
     } 
    return -1;
   }
}