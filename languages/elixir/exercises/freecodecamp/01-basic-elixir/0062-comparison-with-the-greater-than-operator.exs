# URL: https://www.freecodecamp.org/challenges/comparison-with-the-greater-than-operator

# Elixir "cond" operator is a great way to match on multiple possible evaluations
test_greater_than = fn (val) ->
  cond do
    val > 100 ->
      "Over 100"
    val > 10 ->
      "Over 10"
    true ->
      "10 or Under"
  end
end

# Change this value to test
test_greater_than.(10) # => "10 or Under"
