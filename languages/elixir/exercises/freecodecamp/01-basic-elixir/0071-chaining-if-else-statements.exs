# URL: https://www.freecodecamp.org/challenges/chaining-if-else-statements

test_size = fn (num) ->
  cond do
    num < 5 ->
      "Tiny"
    num < 10 ->
      "Small"
    num < 15 ->
      "Medium"
    num < 20 ->
      "Large"
    num >= 20 ->
      "Huge"
    true ->
      20
    end
end

# Change this value to test
test_size.(7) # => "Small"
