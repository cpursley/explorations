// URL: https://www.freecodecamp.org/challenges/confirm-the-ending

// use substring
function confirmEnding(str, target) {
  var strLength = str.length;
  var strSub = str.substring(strLength - target.length, strLength);
  var strMatch = strSub === target;

  return strMatch;
}

confirmEnding("Bastian", "n");
