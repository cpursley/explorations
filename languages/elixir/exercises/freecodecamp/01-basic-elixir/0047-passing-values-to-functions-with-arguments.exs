# URL: https://www.freecodecamp.org/challenges/passing-values-to-functions-with-arguments

# Example
our_function_with_args = fn (a, b) -> IO.puts(a - b) end

our_function_with_args.(10, 5) # => 5

# Only change code below this line.
function_with_args = fn (a, b) -> IO.puts(a + b) end

function_with_args.(3, 7) # => 10
