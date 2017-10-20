// URL: https://www.freecodecamp.org/challenges/truncate-a-string

// use ternary operator, substring and concat
function truncateString(str, num) {
  var string = "";

  if (str.length <= num) {
    string = str;
  } else {
    var substringLength = (num > 3) ? (num - 3) : num;

    string = str.substring(0, substringLength)
                .concat("...");
  }

  return string;
}

truncateString("A-tisket a-tasket A green and yellow basket", 11);
