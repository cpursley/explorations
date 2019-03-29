# URL: https://www.freecodecamp.org/challenges/write-reusable-javascript-with-functions

# Example

# Outside of a Module, you can use an Anonymous function.
our_reusable_function = fn -> IO.puts("Heyya, World") end
# An Anonymous function is called with the "." syntax
our_reusable_function.() # => "Heyya, World"

# Only change code below this line
reusable_function = fn -> IO.puts("Hi World") end

reusable_function.() # "Hi World"
