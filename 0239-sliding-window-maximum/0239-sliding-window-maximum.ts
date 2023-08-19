function maxSlidingWindow(nums: number[], k: number): number[] {
    const result: number[] = [];
    const deque: number[] = []; // Store indices, not actual elements
    
    for (let i = 0; i < nums.length; i++) {
        // Remove elements that are out of the current window
        while (deque.length > 0 && deque[0] < i - k + 1) {
            deque.shift();
        }
        
        // Remove elements that are smaller than the current element
        while (deque.length > 0 && nums[deque[deque.length - 1]] < nums[i]) {
            deque.pop();
        }
        
        deque.push(i); // Add the current element's index to the deque
        
        // If the left end of the window is inside the array, add maximum to the result
        if (i >= k - 1) {
            result.push(nums[deque[0]]);
        }
    }
    
    return result;
}