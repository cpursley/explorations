defmodule Problem004Test do
  use ExUnit.Case
  doctest Problem004

  test "returns the lowest positive integer that does not exist in the array" do
    list_1 = [3, 4, -1, 1]
    list_2 = [1, 2, 0]

    assert Problem004.exec(list_1) == 2
    assert Problem004.exec(list_2) == 3
  end
end
