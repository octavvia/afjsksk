class Solution {
    List<String> letterCombinations(String digits) {
        if (digits.isEmpty) {
        return [];
        }

        final Map<String, String> hashmap = {
        '2': 'abc',
        '3': 'def',
        '4': 'ghi',
        '5': 'jkl',
        '6': 'mno',
        '7': 'pqrs',
        '8': 'tuv',
        '9': 'wxyz',
        };

        List<String> ans = [];
        
        void backTracking(String digit, int index, List<String> ans) {
            if (digit.length == digits.length) {
                ans.add(digit);
                return;
            }
            for (String character in hashmap[digits[index]]!.split('')){
                backTracking( digit + character, index + 1, ans);
            }
        }
        backTracking('',0,ans);

        return ans;
    }
}