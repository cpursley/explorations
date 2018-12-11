# URL: https://www.freecodecamp.org/challenges/manipulate-arrays-with-unshift

# Example
our_list = ["Stimpson", "J", "cat"]
our_list
  |> List.delete_at(0)           # => ["J", "cat"]
  |> List.insert_at(0, "Happy")  # => ["Happy", "J", "cat"]

# Setup
my_list = [["John", 23], ["dog", 3]]

my_list
  |> List.delete_at(0)               # => [["dog", 3]]
  |> List.insert_at(0, ["Paul", 35]) # => [["Paul", 35], ["dog", 3]]
