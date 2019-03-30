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
      |> Enum.reduce([], &dna_to_rna/2)
      |> Enum.reverse
  end

  defp dna_to_rna(dna, acc) do
    case dna do
      ?A -> [85 | acc]
      ?T -> [65 | acc]
      ?G -> [67 | acc]
      ?C -> [71 | acc]
      _ -> acc
    end
  end
end
