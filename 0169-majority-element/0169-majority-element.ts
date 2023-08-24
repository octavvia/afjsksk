function majorityElement(nums: number[]): number {
    let x;
    let y = 0;
    
    for (const num of nums) {
        if (y === 0) {
            x = num;
        }
        
        y += (num === x) ? 1 : -1
    }
    
    return x;
};