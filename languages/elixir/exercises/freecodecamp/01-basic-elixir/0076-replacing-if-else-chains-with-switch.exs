# URL: https://www.freecodecamp.org/challenges/replacing-if-else-chains-with-switch

chain_to_switch = fn (val) ->
  case val do
    "bob" ->
      "Marley"
    42 ->
      "The Answer"
    1 ->
      "There is no # 1"
    99 ->
      "Missed me by this much!"
    7 ->
      "Ate Nine"
    _ ->
      "stuff"
  end
end

# Change this value to test
chain_to_switch.(7)
