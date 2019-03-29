# URL: https://www.freecodecamp.org/challenges/comparison-with-the-strict-equality-operator

# Setup
test_strict = fn (val) ->
  if val === 7 do
    "Equal"
  else
    "Not Equal"
  end
end

# Change this value to test
test_strict.(10) # => "Not Equal"
