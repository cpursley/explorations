# URL: https://www.freecodecamp.org/challenges/comparisons-with-the-logical-and-operator

test_logical_and = fn (val) ->
  if val <= 50 && val >= 25 do
    "Yes"
  else
    "No"
  end
end

# Change this value to test
test_logical_and.(10) # => "No"
