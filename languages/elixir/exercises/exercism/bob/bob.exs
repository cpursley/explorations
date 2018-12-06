defmodule Bob do
  def hey(input) do
    cond do
      Regex.match?(~r/^ *$/, input) ->
        "Fine. Be that way!"
      Regex.match?(~r/^((?![\p{L}]).)*$/, input) ->
        if String.ends_with?(input, "?"), do: "Sure.", else: "Whatever."
      Regex.match?(~r/^[^a-z]*$/, input) ->
        if String.ends_with?(input, "?") do
          "Calm down, I know what I'm doing!"
        else
          "Whoa, chill out!"
        end
      String.ends_with?(input, "?") ->
        "Sure."
      true ->
        "Whatever."
    end
  end
end
