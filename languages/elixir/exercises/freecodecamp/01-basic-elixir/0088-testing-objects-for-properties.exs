# URL: https://www.freecodecamp.org/challenges/testing-objects-for-properties

# Setup
var myObj = {
  gift: "pony",
  pet: "kitten",
  bed: "sleigh"
};

function checkObj(checkProp) {
  # Your Code Here
  var has_property = "";

  if (myObj.hasOwnProperty(checkProp)) {
    has_property = myObj[checkProp];
  } else {
    has_property = "Not Found";
  }

  return has_property;
}

# Test your code by modifying these values
checkObj("gift");
