# URL: https://www.freecodecamp.org/challenges/local-scope-and-functions

my_local_scope = fn ->
  my_var = "hello, variable"
  IO.puts(my_var)
end

my_local_scope.() # => "hello, variable"
