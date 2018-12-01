# https://adventofcode.com/2018/day/1

# --- Day 1: Chronal Calibration ---

defmodule ChronalCalibration do

  @doc """
  Desc:
    Open file, read one line at a time and map each string into list of integers
  Refs:
    Stream.map: https://hexdocs.pm/elixir/Stream.html#map/2
    Enum.map:   https://hexdocs.pm/elixir/Enum.html#map/2
  """
  def map_frequency_from_file(file_name) do
    File.stream!(file_name)
      |> Stream.map(&String.trim_trailing/1)
      |> Enum.map(&String.to_integer/1)
  end

  @doc """
  Desc:
    Add each value to previous accumulated value and return result
  Refs:
    Enum.reduce: https://hexdocs.pm/elixir/Enum.html#reduce/2
  """
  def calculate_frequency(frequency_list) do
    frequency_list
      |> Enum.reduce(0, &+/2)
      |> IO.inspect
  end

  @doc """
  Desc:
    Opens file with map_frequency_from_file and applies calculate_frequency
  Refs:
  """
  def calculate_frequency_from_file(file_name) do
    file_name
      |> map_frequency_from_file
      |> calculate_frequency
  end

  @doc """
  Desc:
    Open file with map_frequency_from_file, cycle through list, add each value
    to previous accumulated value and insert into new list. Reduce list down
    with MapSet as accumulator and halt once a duplicate member value is found
  Refs:
    Stream.cycle:      https://hexdocs.pm/elixir/Stream.html#cycle/1
    Stream.scan:       https://hexdocs.pm/elixir/Stream.html#scan/2
    Enum.reduce_while: https://hexdocs.pm/elixir/Enum.html#reduce_while/3
    MapSet:            https://hexdocs.pm/elixir/MapSet.html
  """
  def calculate_first_frequency_from_file(file_name) do
    file_name
      |> map_frequency_from_file
      |> Stream.cycle
      |> Stream.scan(0, &+/2)
      |> Enum.reduce_while(MapSet.new(), fn frequency, map_set ->
           if MapSet.member?(map_set, frequency) do
             {:halt, frequency}
           else
             {:cont, MapSet.put(map_set, frequency)}
           end
         end)
      |> IO.inspect
  end
end

# --- Part One ---
ChronalCalibration.calculate_frequency_from_file("input.txt")

# => 578

# --- Part Two ---
ChronalCalibration.calculate_first_frequency_from_file("input.txt")

# => 82516
