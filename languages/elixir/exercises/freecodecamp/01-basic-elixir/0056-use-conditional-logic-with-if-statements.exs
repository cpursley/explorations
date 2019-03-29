# URL: https://www.freecodecamp.org/challenges/use-conditional-logic-with-if-statements

# Example
our_true_or_false = fn (is_it_true) ->
  if is_it_true do
    "Yes, it's true"
  else
    "No, it's false"
  end
end

# Setup
true_or_false = fn (was_that_true) ->
  if was_that_true do
    "Yes, that was true"
  else
    "No, that was false"
  end
end

# Change this value to test
true_or_false.(true) # => "Yes, that was true"
