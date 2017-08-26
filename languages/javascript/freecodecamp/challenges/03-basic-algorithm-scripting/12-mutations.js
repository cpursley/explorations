// URL: https://www.freecodecamp.org/challenges/mutations

// create reusable functions for mutations

// use includes to check for substring match
function containsAny(string, substrings) {
  for (var i = 0; i != substrings.length; i++) {
    if (!string.includes(substrings[i])) {
      return false;
    }
  }
  return true;
}

// map strings in array to toLowerCase
function lowerCaseArray(array) {
  return array.map(function(string) {
    return string.toLowerCase();
  });
}

function mutation(arr) {
  var lowerCasedArray = lowerCaseArray(arr);

  var headString = lowerCasedArray[0],
      tailArray  = lowerCasedArray[1].split("");

  var stringContains = containsAny(headString, tailArray);

  return stringContains;
}

mutation(["hello", "hey"]);
