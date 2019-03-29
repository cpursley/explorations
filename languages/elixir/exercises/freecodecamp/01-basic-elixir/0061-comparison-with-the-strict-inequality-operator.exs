# URL: https://www.freecodecamp.org/challenges/comparison-with-the-strict-inequality-operator

# Setup
test_strict_not_equal = fn (val) ->
  if val !== 17 do
    "Not Equal"
  else
    "Equal"
  end
end

# Change this value to test
test_strict_not_equal.(10) # => "Not Equal"
