# URL: https://www.freecodecamp.org/challenges/use-bracket-notation-to-find-the-nthtolast-character-in-a-string

# Note that Elixir does not use bracket notation for string access
# Instead, use String.at("my_string", -1) to find character by index

# Example
first_name = "Ada"
third_to_last_letter_of_first_name = String.at(first_name, -3)
# => "A"

# Setup
last_name = "Lovelace"

# Only change code below this line
second_to_last_letter_of_last_name = String.at(last_name, -2)
# => "c"
