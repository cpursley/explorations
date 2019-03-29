# URL: https://www.freecodecamp.org/challenges/return-a-value-from-a-function-with-return

# In Elixir, you don't have to specify "return" as the last evaluation is returned automatically

# Example
minus_seven = fn (num) -> num - 7 end

# Only change code below this line
times_five = fn (num) -> num * 5 end

times_five.(5) # => 25
