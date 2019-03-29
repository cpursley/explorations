# URL: https://www.freecodecamp.org/challenges/adding-a-default-option-in-switch-statements

switch_of_stuff = fn (val) ->
  case val do
    "a" ->
       "apple"
    "b" ->
       "bird"
    "c"
       "cat"
    _ ->
       "stuff"
  end
end

# Change this value to test
switch_of_stuff.(1) # => "stuff"
