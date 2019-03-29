# URL: https://www.freecodecamp.org/challenges/comparisons-with-the-logical-or-operator

test_logical_or = fn (val) ->
  if val < 10 || val > 20 do
    "Outside"
  else
    "Inside"
  end
end

# Change this value to test
test_logical_or.(15) # => "Inside"
