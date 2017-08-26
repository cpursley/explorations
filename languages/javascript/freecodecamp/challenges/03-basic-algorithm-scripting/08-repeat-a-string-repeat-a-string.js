// URL: https://www.freecodecamp.org/challenges/repeat-a-string-repeat-a-string

// use repeat and ternary operator
function repeatStringNumTimes(str, num) {
  var repeadedStr = num > 0 ? str.repeat(num) : "";

  return repeadedStr;
}

repeatStringNumTimes("abc", 3);
