# URL: https://www.freecodecamp.org/challenges/introducing-else-if-statements

# In Elixir, for muliple comparisons, use "cond" or "case" statements
test_else_if = fn (val) ->
  cond do
    val > 10 ->
      "Greater than 10"
    val < 5 ->
      "Smaller than 5"
    true ->
      "Between 5 and 10"
  end
end

# Change this value to test
test_else_if.(7) # => "Between 5 and 10"
