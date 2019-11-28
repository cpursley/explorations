# Problem 004: https://www.dailycodingproblem.com

# This problem was asked by Stripe.

# Given an array of integers, find the first missing positive integer in linear time and constant space. In other words, find the lowest positive integer that does not exist in the array. The array can contain duplicates and negative numbers as well.

# For example, the input [3, 4, -1, 1] should give 2. The input [1, 2, 0] should give 3.

# You can modify the input array in-place.

defmodule Problem004 do
  def exec(list) do
    list_sorted = Enum.sort(list)

    list_head =
      list_sorted
      |> Enum.filter(fn i -> i >= 1 end)
      |> hd

    new_list =
      list_head..length(list) |> Enum.to_list

    (new_list -- list_sorted) |> hd
  end
end
