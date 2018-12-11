# URL: https://www.freecodecamp.org/challenges/global-vs-local-scope-in-functions

# Setup
var outerWear = "T-Shirt";

function myOutfit() {
  # Only change code below this line
  var outerWear = "sweater";


  # Only change code above this line
  return outerWear;
}

myOutfit();
