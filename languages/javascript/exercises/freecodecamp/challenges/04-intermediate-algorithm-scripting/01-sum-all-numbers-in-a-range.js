// URL: https://www.freecodecamp.org/challenges/sum-all-numbers-in-a-range

function sumAll(arr) {
  var max = Math.max.apply(null, arr) + 1;
  var min = Math.min.apply(null, arr);

  var arrSum = 0;
  for (var i = min; i < max ; i++) {
    arrSum += i;
  }

  return arrSum;
}

sumAll([1, 4]);
