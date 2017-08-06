// URL: https://www.freecodecamp.org/challenges/generate-random-whole-numbers-within-a-range

// Example
function ourRandomRange(ourMin, ourMax) {

  return Math.floor(Math.random() * (ourMax - ourMin + 1)) + ourMin;
}

ourRandomRange(1, 9);

// Only change code below this line.

function randomRange(myMin, myMax) {
  var random = Math.random();
  var multiplier = myMax - myMin + 1;
  var rounded = Math.floor(random * multiplier) + myMin;
  return rounded; // Change this line

}

// Change these values to test your function
var myRandom = randomRange(5, 15);
