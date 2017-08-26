// URL: https://www.freecodecamp.org/challenges/slasher-flick

// use slice
function slasher(arr, howMany) {
  var slashedArr = arr.slice(howMany, arr.length);

  return slashedArr;
}

slasher([1, 2, 3], 2);
