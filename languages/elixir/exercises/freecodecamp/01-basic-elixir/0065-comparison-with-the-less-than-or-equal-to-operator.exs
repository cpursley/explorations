# URL: https://www.freecodecamp.org/challenges/comparison-with-the-less-than-or-equal-to-operator

test_less_or_equal = fn (val) ->
  cond do
    val <= 12 ->
      "Smaller Than or Equal to 12"
    val <= 24 ->
      "Smaller Than or Equal to 24"
    true ->
      "25 or More"
  end
end

# Change this value to test
test_less_or_equal.(10) # => "Smaller Than or Equal to 12"
