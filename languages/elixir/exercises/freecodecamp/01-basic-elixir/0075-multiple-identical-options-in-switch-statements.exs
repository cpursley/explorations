# URL: https://www.freecodecamp.org/challenges/multiple-identical-options-in-switch-statements

sequential_sizes = fn (val) ->
  case val do
    1 ->
      "Low"
    2 ->
      "Low"
    3 ->
      "Low"
    4 ->
      "Mid"
    5 ->
      "Mid"
    6 ->
      "Mid"
    7 ->
      "High"
    8 ->
      "High"
    9 ->
      "High"
  end
end

# Change this value to test
sequential_sizes.(1)
