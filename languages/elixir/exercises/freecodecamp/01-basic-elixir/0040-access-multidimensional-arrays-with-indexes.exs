# URL: https://www.freecodecamp.org/challenges/access-multidimensional-arrays-with-indexes

# In Elixir's IEx, to prevent codepoints from displaying run:
# IEx.configure(inspect: [charlists: :as_lists])

# Setup
my_list = [[1, 2, 3], [4, 5, 6], [7 ,8 ,9], [[10, 11, 12], 13, 14]]

# Only change code below this line.
my_data =
  my_list
    |> Enum.at(2)
    |> Enum.at(1)
# => 8
