# URL: https://www.freecodecamp.org/challenges/introducing-else-statements

test_else = fn (val) ->
  if val > 5 do
    "Bigger than 5"
  else
    "5 or Smaller"
  end
end

# Change this value to test
test_else.(4) # => "5 or Smaller"
