// URL: https://www.freecodecamp.org/challenges/title-case-a-sentence

// using map and replace
function titleCase(str) {
  var sentence = str.toLowerCase()
                    .split(" ");

  var titleized = sentence.map(function(word) {
    var firstLetter = word.charAt(0);
    var joinedWord = word.replace(firstLetter, firstLetter.toUpperCase());

    return joinedWord;
  });

  var titleizedSentence = titleized.join(" ");

  return titleizedSentence;
}

titleCase("I'm a little tea pot");
