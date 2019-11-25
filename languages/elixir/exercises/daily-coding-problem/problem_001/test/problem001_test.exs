defmodule Problem001Test do
  use ExUnit.Case
  doctest Problem001

  test "returns true if any two numbers in the list add up to k" do
    list_1 = [10, 15, 3, 7]
    list_2 = [11, 15, 3, 9, 2, 4]
    list_3 = [9, 1, 4]
    k = 17

    assert Problem001.exec(list_1, k) == true
    assert Problem001.exec(list_2, k) == true
    assert Problem001.exec(list_3, k) == false
  end
end
