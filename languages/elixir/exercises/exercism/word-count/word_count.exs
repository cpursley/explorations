defmodule Words do
  @doc """
  Count the number of words in the sentence.

  Words are compared case-insensitively.
  """
  @spec count(String.t()) :: map
  def count(sentence) do
    sentence
      |> String.downcase
      |> String.split(~r/[:!&@$%^,_ ]/, trim: true)
      |> Enum.reduce(%{}, &map_word_frequency/2)
  end

  def map_word_frequency(word, map), do: Map.update(map, word, 1, &(&1 + 1))
end
