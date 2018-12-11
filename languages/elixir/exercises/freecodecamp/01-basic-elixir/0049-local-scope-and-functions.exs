# URL: https://www.freecodecamp.org/challenges/local-scope-and-functions

function myLocalScope() {
  'use strict';

  var myVar = "hello, variable";
  console.log(myVar);
}
myLocalScope();

# Run and check the console
# myVar is not defined outside of myLocalScope
# console.log(myVar);

# Now remove the console log line to pass the test
