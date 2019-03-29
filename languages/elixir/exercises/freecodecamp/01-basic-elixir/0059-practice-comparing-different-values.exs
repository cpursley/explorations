# URL: https://www.freecodecamp.org/challenges/comparison-with-the-strict-equality-operator

# Setup
compare_equality = fn (a, b) ->
  if a == b do
    "Equal"
  else
    "Not Equal"
  end
end

# Change this value to test
compare_equality.(10, "10") # => "Not Equal"
