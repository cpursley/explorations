// URL: https://www.freecodecamp.org/challenges/find-the-longest-word-in-a-string

// using sort
function findLongestWord(str) {
  var sortedWords = str.split(" ")
                       .sort(function(a, b) { return b.length - a.length; });

  var longestWord = sortedWords[0].length;

  return longestWord;
}

findLongestWord("The quick brown fox jumped over the lazy dog");
