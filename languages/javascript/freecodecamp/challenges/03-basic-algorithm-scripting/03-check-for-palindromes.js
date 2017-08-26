// URL: https://www.freecodecamp.org/challenges/check-for-palindromes

// using regular expression
function palindrome(str) {
  var joinedStr = str.replace(/[^a-z0-9+]+/gi, '')
                     .toLowerCase();

  var reversedStr = joinedStr.split("")
                             .reverse()
                             .join("");

  var ispalindrome = joinedStr === reversedStr;

  return ispalindrome;
}

palindrome("eye");
