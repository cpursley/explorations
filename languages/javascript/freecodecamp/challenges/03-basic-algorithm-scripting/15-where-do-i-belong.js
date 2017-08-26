// URL: https://www.freecodecamp.org/challenges/where-do-i-belong

// use push, sort and indexOf
function getIndexToIns(arr, num) {
  arr.push(num);

  var sortedArr = arr.sort(function(a, b) {
    return a - b;
  });

  var indexNum = sortedArr.indexOf(num);

  return indexNum;
}

getIndexToIns([40, 60], 50);
