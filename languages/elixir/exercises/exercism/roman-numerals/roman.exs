defmodule Roman do
  @doc """
  Convert the number to a roman number.
  """
  @spec numerals(pos_integer) :: String.t()
  def numerals(number) do
    cond do
      number in 1..3     -> String.duplicate("I", number)
      number == 4        -> "IV"
      number in 5..8     -> "V" <> String.duplicate("I", number - 5)
      number == 9        -> "IX"
      number in 10..39   -> duplicate_and_remainder(number, 10, "X")
      number in 40..49   -> "XL" <> remainder(number, 10)
      number in 50..89   -> "L" <> duplicate_and_remainder(number - 50, 10, "X")
      number in 90..99   -> "XC" <> remainder(number, 10)
      number in 100..399 -> duplicate_and_remainder(number, 100, "C")
      number in 400..499 -> "CD" <> remainder(number, 100)
      number in 500..889 -> "D" <> duplicate_and_remainder(number - 500, 100, "D")
      number in 890..999 -> "CM" <> remainder(number, 100)
      number >= 1000     -> duplicate_and_remainder(number, 1000, "M")
      true               -> ""
    end
  end

  def remainder(number, divisor), do: number |> rem(divisor) |> numerals

  def duplicate_and_remainder(number, divisor, numeral) do
    String.duplicate(numeral, trunc(number / divisor)) <> remainder(number, divisor)
  end
end
