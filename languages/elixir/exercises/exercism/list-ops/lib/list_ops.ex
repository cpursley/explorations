defmodule ListOps do
  # Please don't use any external modules (especially List or Enum) in your
  # implementation. The point of this exercise is to create these basic
  # functions yourself. You may use basic Kernel functions (like `Kernel.+/2`
  # for adding numbers), but please do not use Kernel functions for Lists like
  # `++`, `--`, `hd`, `tl`, `in`, and `length`.

  @spec count(list) :: non_neg_integer
  def count([]),   do: 0
  def count(list), do: reduce(list, 0, fn (_i, acc) -> 1 + acc end)

  @spec reverse(list) :: list
  def reverse([]),   do: []
  def reverse(list), do: reduce(list, [], &[&1 | &2])

  @spec map(list, (any -> any)) :: list
  def map([], _fun),  do: []
  def map(list, fun), do: list |> reduce([], &([fun.(&1) | &2])) |> reverse

  @spec filter(list, (any -> as_boolean(term))) :: list
  def filter([], _fun),  do: []
  def filter(list, fun), do: list |> reduce([], &(if fun.(&1), do: [&1 | &2], else: &2)) |> reverse

  @type acc :: any
  @spec reduce(list, acc, (any, acc -> acc)) :: acc
  def reduce([], acc, _fun),       do: acc
  def reduce([hd | tl], acc, fun), do: reduce(tl, fun.(hd, acc), fun)

  @spec append(list, list) :: list
  def append(list_a, []),     do: list_a
  def append([], list_b),     do: list_b
  def append(list_a, list_b), do: list_a |> reverse |> reduce(list_b, &[&1 | &2])

  @spec concat([[any]]) :: [any]
  def concat([]),   do: []
  def concat(list), do: list |> reverse |> reduce([], &append/2)
end
