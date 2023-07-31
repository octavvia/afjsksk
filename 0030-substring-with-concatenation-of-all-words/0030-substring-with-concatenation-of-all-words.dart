class Solution {
List<int> findSubstring(String s, List<String> words) {
  List<int> result = [];
  
  if (s.isEmpty || words.isEmpty) {
    return result;
  }
  
  int wordLength = words[0].length;
  int wordsCount = words.length;
  int totalLength = wordLength * wordsCount;
  
  if (s.length < totalLength) {
    return result;
  }
  
  Map<String, int> wordFrequency = {};
  for (String word in words) {
    if (wordFrequency.containsKey(word)) {
      wordFrequency[word] = wordFrequency[word]! + 1;
    } else {
      wordFrequency[word] = 1;
    }
  }
  
  for (int i = 0; i <= s.length - totalLength; i++) {
    Map<String, int> seenWords = {};
    
    int j = 0;
    while (j < wordsCount) {
      String currentWord = s.substring(i + j * wordLength, i + (j + 1) * wordLength);
      
      if (wordFrequency.containsKey(currentWord)) {
        if (seenWords.containsKey(currentWord)) {
          seenWords[currentWord] = seenWords[currentWord]! + 1;
        } else {
          seenWords[currentWord] = 1;
        }
        
        if (seenWords[currentWord]! > wordFrequency[currentWord]!) {
          break;
        }
      } else {
        break;
      }
      
      j++;
    }
    
    if (j == wordsCount) {
      result.add(i);
    }
  }
  
  return result;
}

}