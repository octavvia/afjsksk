class Solution {
    private lateinit var s: String
    private lateinit var wordDict: Set<String>
    private lateinit var memo: Array<MutableList<Boolean?>>

    fun wordBreak(s: String, wordDict: List<String>): Boolean {
        this.s = s
        this.wordDict = wordDict.toHashSet()
        memo = Array(s.length+1) { MutableList<Boolean?>(s.length+1) { null } }
        memo[s.length][s.length] = true
        return dfs(0, s.length)
    }

    private fun dfs(i: Int, j: Int): Boolean {
        if (i > j) return false
        return memo[i][j] ?: run {
            memo[i][j] = if (!exists(s.substring(i, j))) {
                dfs(i, j-1)
            } else {
                dfs(j, s.length) || dfs(i, j-1)
            }
            memo[i][j] ?: false
        }
    }

    private fun exists(str: String): Boolean {
        return wordDict.contains(str)
    }
}