function search(nums: number[], target: number): boolean {
    for(let i = 0; i < nums.length; i++){
        if(nums[i] === target){
            return true;
        }
    }
    return false;
};