defmodule Problem002Test do
  use ExUnit.Case
  doctest Problem002

  test "returns a new array such that each element at index i of the new array is the product of all the numbers in the original array except the one at i" do
    list_1 = [1, 2, 3, 4, 5]
    list_2 = [3, 2, 1]

    assert Problem002.exec(list_1) == [120, 60, 40, 30, 24]
    assert Problem002.exec(list_2) == [2, 3, 6]
  end
end
