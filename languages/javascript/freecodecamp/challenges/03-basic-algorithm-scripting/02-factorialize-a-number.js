// URL: https://www.freecodecamp.org/challenges/factorialize-a-number

// using recursion
function factorialize(num) {
  if (num < 0) {
    result = -1;
  } else if (num == 0) {
    result = 1;
  } else {
    result = num * factorialize(num - 1);
  }

  return result;
}

factorialize(5);
