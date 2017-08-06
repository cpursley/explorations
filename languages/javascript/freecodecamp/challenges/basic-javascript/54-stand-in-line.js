// URL: https://www.freecodecamp.org/challenges/stand-in-line

function nextInLine(arr, item) {
  // Your code here
  var addToArry = arr.push(item);
  var removeFromArray = arr.shift();
  var firstArrItem = arr[0];

  return removeFromArray;  // Change this line
}

// Test Setup
var testArr = [1,2,3,4,5];

// Display Code
console.log("Before: " + JSON.stringify(testArr));
console.log(nextInLine(testArr, 6)); // Modify this line to test
console.log("After: " + JSON.stringify(testArr));
