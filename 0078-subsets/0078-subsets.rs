impl Solution {
    pub fn subsets(mut nums: Vec<i32>) -> Vec<Vec<i32>> {
        if nums.len() == 0{
            return vec![vec![]];
        }
        let last = nums.pop().unwrap();
        let remain_subsets = Self::subsets(nums);
        let mut res = remain_subsets.clone();
        for mut v in remain_subsets{
            v.push(last);
            res.push(v);
        }
        res
    }
}