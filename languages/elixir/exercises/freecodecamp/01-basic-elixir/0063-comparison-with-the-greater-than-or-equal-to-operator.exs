# URL: https://www.freecodecamp.org/challenges/comparison-with-the-greater-than-or-equal-to-operator

test_greater_or_equal = fn (val) ->
  cond do
    val >= 20 ->
      "20 or Over"
    val >= 10 ->
      "10 or Over"
    true ->
      "9 or Under"
  end
end

# Change this value to test
test_greater_or_equal.(10) # => "10 or Over"
