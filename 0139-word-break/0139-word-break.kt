class Solution {
    private lateinit var s: String
    private lateinit var wordDict: Set<String>
    private lateinit var memo: Array<Boolean>

    fun wordBreak(s: String, wordDict: List<String>): Boolean {
        this.s = s
        this.wordDict = wordDict.toHashSet()
        memo = Array(s.length + 1) { false }
        memo[s.length] = true

        for (i in s.length - 1 downTo 0) {
            for (j in i + 1..s.length) {
                if (exists(s.substring(i, j)) && memo[j]) {
                    memo[i] = true
                    break
                }
            }
        }
        return memo[0]
    }

    private fun exists(str: String): Boolean {
        return wordDict.contains(str)
    }
}
