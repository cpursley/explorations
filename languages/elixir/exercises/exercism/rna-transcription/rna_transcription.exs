defmodule RNATranscription do
  @doc """
  Transcribes a character list representing DNA nucleotides to RNA

  ## Examples

  iex> RNATranscription.to_rna('ACTG')
  'UGAC'
  """
  @spec to_rna([char]) :: [char]
  def to_rna(dna) do
    dna
      |> to_string
      |> String.split("")
      |> Enum.reduce([], &dna_to_rna/2)
      |> Enum.join("")
      |> String.reverse
      |> String.to_charlist
  end

  defp dna_to_rna(dna, acc) do
    case dna do
      "A" -> ["U" | acc]
      "T" -> ["A" | acc]
      "G" -> ["C" | acc]
      "C" -> ["G" | acc]
      _ -> acc
    end
  end
end
