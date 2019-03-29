# URL: https://www.freecodecamp.org/challenges/comparison-with-the-less-than-operator

test_less_than = fn (val) ->
  cond do
    val < 25 ->
      "Under 25"
    val < 55 ->
      "Under 55"
    true ->
      "55 or Over"
  end
end

# Change this value to test
test_less_than.(10) # => "Under 25"
