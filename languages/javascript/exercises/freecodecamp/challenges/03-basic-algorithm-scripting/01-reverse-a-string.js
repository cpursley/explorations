// URL: https://www.freecodecamp.org/challenges/reverse-a-string

function reverseString(str) {
  var reversedString = str.split("")
                          .reverse()
                          .join("");

  return reversedString;
}

reverseString("hello");
