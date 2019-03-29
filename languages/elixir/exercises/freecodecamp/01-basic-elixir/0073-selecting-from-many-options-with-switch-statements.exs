# URL: https://www.freecodecamp.org/challenges/selecting-from-many-options-with-switch-statements

# In Elixir, 'case' statements are like 'switch' on steroids

case_in_switch = fn (val) ->
  case val do
    1 ->
      "alpha"
    2 ->
      "beta"
    3 ->
      "gamma"
    4 ->
      "delta"
    _ ->
      "stuff"
  end
end

# Change this value to test
case_in_switch.(1) # => "alpha"
