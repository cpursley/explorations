# URL: https://www.freecodecamp.org/challenges/manipulate-arrays-with-push

# In Elixir, List.insert_at([1, 2, 3, 4], -1, 0) is used to add items to a List

# Example
our_list = ["Stimpson", "J", "cat"]
List.insert_at(our_list, -1, ["happy", "joy"])
# => ["Stimpson", "J", "cat", ["happy", "joy"]]

# Setup
my_list = [["John", 23], ["cat", 2]]

# Only change code below this line.

List.insert_at(my_list, -1, ["dog", 3])
# => [["John", 23], ["cat", 2], ["dog", 3]]
