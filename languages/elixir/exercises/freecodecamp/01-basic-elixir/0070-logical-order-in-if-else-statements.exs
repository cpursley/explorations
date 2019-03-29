# URL: https://www.freecodecamp.org/challenges/logical-order-in-if-else-statements

order_my_logic = fn (val) ->
  cond do
    val < 5 ->
      "Less than 5"
    val < 10 ->
      "Less than 10"
    true ->
      "Greater than or equal to 10"
  end
end

# Change this value to test
order_my_logic.(7) # => "Less than 10"
