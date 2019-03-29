# URL: https://www.freecodecamp.org/challenges/golf-code

golf_score = fn (par, strokes) ->
  cond do
    strokes == 1 ->
      "Hole-in-one!"
    strokes <= par - 2 ->
      "Eagle"
    strokes == par - 1 ->
      "Birdie"
    strokes == par ->
      "Par"
    strokes == par + 1 ->
      "Bogey"
    strokes == par + 2 ->
      "Double Bogey"
    strokes >= par + 3 ->
      "Go Home!"
    true ->
      "else"
  end
end

# Change these values to test
golf_score.(5, 4) # => "Birdie"
