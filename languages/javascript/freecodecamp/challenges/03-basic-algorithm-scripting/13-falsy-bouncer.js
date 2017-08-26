// URL: https://www.freecodecamp.org/challenges/falsy-bouncer

// use filter in functional style
function bouncer(arr) {
  var truthyValues = arr.filter(Boolean);

  return truthyValues;
}

bouncer([7, "ate", "", false, 9]);
