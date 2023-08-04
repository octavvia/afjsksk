// Time: O(n*n) = O(n^2)
// Space: O(1)
func containsDuplicate(nums []int) bool {
    // Time: O(n-1) = O(n)
    for i := 0; i < len(nums)-1; i++ {
        // Time: O(n-1) = O(n)
        for j := i+1; j < len(nums); j++ {
            if nums[i] == nums[j] {
                return true
            }
        }
    }
    return false
}