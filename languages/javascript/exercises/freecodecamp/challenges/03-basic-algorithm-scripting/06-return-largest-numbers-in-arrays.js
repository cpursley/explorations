// URL: https://www.freecodecamp.org/challenges/return-largest-numbers-in-arrays

// use map and Math.max (with apply hack to avoid NaN)
function largestOfFour(arr) {
  var largestNumInArray = arr.map(function(subArr) {
    var largestNum = Math.max.apply(null, subArr);

    return largestNum;
  });

  return largestNumInArray;
}
