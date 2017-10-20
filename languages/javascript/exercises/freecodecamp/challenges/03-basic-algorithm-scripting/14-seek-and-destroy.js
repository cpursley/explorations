// URL: https://www.freecodecamp.org/challenges/seek-and-destroy

// use arguments object and convert to array
function destroyer(arr) {
  var otherArgs = Array.from(arguments)
                       .slice(1);

  var newArray = arr.filter(function(val) {
    var cleanVal = !otherArgs.includes(val);

    return cleanVal;
  });

  return newArray;
}

destroyer([1, 2, 3, 1, 2, 3], 2, 3);
