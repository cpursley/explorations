# URL: https://www.freecodecamp.org/challenges/manipulate-arrays-with-shift

# In Elixir, values are immutable which means we can't modify the original value

# Example
our_list = ["Stimpson", "J", ["cat"]]
removed_from_our_list = List.delete_at(our_list, 0)
# => ["J", ["cat"]]

# Setup
my_list = [["John", 23], ["dog", 3]]

# Only change code below this line.
removed_from_my_list = List.delete_at(my_list, 0)
# => [["dog", 3]]
