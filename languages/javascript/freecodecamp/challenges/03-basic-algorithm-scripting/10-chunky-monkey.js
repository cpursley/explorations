// URL: https://www.freecodecamp.org/challenges/chunky-monkey

// use slice and push
function chunkArrayInGroups(arr, size) {
  var newArr = [];

  for (i = 0; i < arr.length; i += size) {
    var tail = i + size;
    var arrChunk = arr.slice(i, tail);

    newArr.push(arrChunk);
  }

  return newArr;
}

chunkArrayInGroups(["a", "b", "c", "d"], 2);
