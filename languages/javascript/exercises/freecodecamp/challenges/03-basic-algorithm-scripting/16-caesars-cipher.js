// URL: https://www.freecodecamp.org/challenges/caesars-cipher

// split out into reusable functions
function encodeCipher(char) {
  var cipherCharIndex = char.charCodeAt(0) + 13;
  var cipherChar = "";

  if (cipherCharIndex >= 91) {
    cipherChar = String.fromCharCode(cipherCharIndex - 90 + 64);
  } else {
    cipherChar = String.fromCharCode(cipherCharIndex);
  }

  return cipherChar;
}

function rot13(str) {
  var splitString = str.split("");
  var mappedStr = splitString.map(function(char) {
    var cipherChar = (char.search(/[^A-Z]+/) === -1) ? encodeCipher(char) : char;

    return cipherChar;
  });

  var rejoinedStr = mappedStr.join("");

  return rejoinedStr;
}
