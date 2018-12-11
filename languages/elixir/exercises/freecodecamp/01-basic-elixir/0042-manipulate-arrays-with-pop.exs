# URL: https://www.freecodecamp.org/challenges/manipulate-arrays-with-pop

# In Elixir, List.delete_at([1, 2, 3], 0) is used to remove items from a List

# Example
our_list = [1, 2, 3]
removed_from_our_list = List.delete_at(our_list, -1)
# => [1,2]

# Setup
my_list = [["John", 23], ["cat", 2]]

# Only change code below this line.
removed_from_my_list = List.delete_at(my_list, -1)
# => [["John", 23]]
