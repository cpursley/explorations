# URL: https://www.freecodecamp.org/challenges/comparison-with-the-equality-operator

# Setup
test_equal = fn (val) ->
  if val == 12 do
    "Equal"
  else
    "Not Equal"
  end
end

# Change this value to test
test_equal.(10) # => "Not Equal"
