# https://adventofcode.com/2018/day/1

defmodule ChronalCalibration do

  def calculate_frequency_from_file(file_name) do
    File.stream!(file_name)
      |> Stream.map(&(String.replace(&1, "\n", "")) )
      |> Stream.map(&String.to_integer/1)
      |> calculate_frequency
  end

  def calculate_frequency(frequency_list) do
    frequency_list
      |> Enum.reduce(0, &+/2)
      |> IO.inspect
  end
end

ChronalCalibration.calculate_frequency_from_file("input.txt")

# => 578
