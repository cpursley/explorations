// URL: https://www.freecodecamp.org/challenges/counting-cards

// modifying this variable is a very bad idea...
var count = 0;

function cc(card) {
  // Only change code below this line
  switch (card) {
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
      count += 1;
      break;
    case 10:
    case 'J':
    case 'Q':
    case 'K':
    case 'A':
      count -= 1;
      break;
  }

  var action = "";
  if (count >= 1) {
    action = "Bet";
  } else {
    action = "Hold";
  }


  var ccString = count + " " + action;
  return ccString;
  // Only change code above this line
}

// Add/remove calls to test your function.
// Note: Only the last will display
// cc(2); cc(3); cc(7); cc('K'); cc('A');
cc(7); cc(8); cc(9);
