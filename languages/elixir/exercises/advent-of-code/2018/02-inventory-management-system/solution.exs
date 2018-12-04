# https://adventofcode.com/2018/day/2
# José Valim's solution: https://gist.github.com/josevalim/00fc469328c1c985ad082b82fd102c51
# TODO

# --- Day 2: Inventory Management System ---

defmodule InventoryManagementSystem do
  @doc """
  Desc:
    Open file, read one line at a time and map each string into list
  """
  def map_inventory_from_file(file_name) do
    file_name
      |> File.stream!
      |> Stream.map(&String.trim_trailing/1)
  end

  @doc """
  Desc:
   Reduce list of inventory item characters into new accumulator (Map) with the
   character as key and update the value by 1 whenever duplicate character found
  """
  def count_character_occurrence(inventory_item_list) do
    Enum.reduce(inventory_item_list, %{}, fn char, acc ->
      Map.put(acc, char, (acc[char] || 0) + 1)
    end)
  end

  @doc """
  Desc:
    Reduce list of inventory item characters into new accumulator (Tuple) with
    the tuple head collecting "twice" and the tuple tail "thrise" occurrences
  Refs:
    Tuple:
      https://elixirschool.com/en/lessons/basics/collections/#tuples
    Anonymous Function:
      https://elixirschool.com/en/lessons/basics/functions/#anonymous-functions
    Multiple Clauses in An Anonymous Function:
      https://til.hashrocket.com/posts/36c6d2684e-defining-multiple-clauses-in-an-anonymous-function
  """
  def get_twice_and_thrice(character_occurrence_map) do
    Enum.reduce(character_occurrence_map, {0, 0}, fn
        # how exactly is this matching working (with a comma???)
        # i really don't understand what is happening here...
        {_codepoint, 2}, {_twice, thrice} ->
          IO.inspect(lable: "thrice", thrice)
          {1, thrice}
        {_codepoint, 3}, {twice, _thrice} ->
          IO.inspect(lable: "twice", twice)
          {twice, 1}
        _, acc ->
          IO.inspect(lable: "acc:", acc)
          acc
    end)
  end

  @doc """
  Desc:
    TODO: explain pattern matching in variable assignment
  Refs:
    TODO
  """
  def calculate_twice_and_thrice_occurrences(inventory_id) do
    Enum.reduce(inventory_id, {0, 0}, fn inventory_id, {acc_twice, acc_thrice} ->
      {twice, thrice} =
        inventory_id
          |> count_character_occurrence
          |> get_twice_and_thrice

      {twice + acc_twice, thrice + acc_thrice}
    end)
  end

  @doc """
  Desc:
    TODO:
  Refs:
    String.graphemes: https://hexdocs.pm/elixir/String.html#graphemes/1
  """
  def calculate_inventory_checksum_from_file(file_name) do
    {twices, thrices} =
      file_name
        |> map_inventory_from_file
        |> Enum.map(&String.graphemes/1)
        |> calculate_twice_and_thrice_occurrences

    IO.inspect (twices * thrices)
  end
end

# --- Part One ---
InventoryManagementSystem.calculate_inventory_checksum_from_file("input.txt")

# => 8715

# --- Part Two ---
# TODO!
