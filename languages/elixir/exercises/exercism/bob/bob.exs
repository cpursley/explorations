defmodule Bob do
  def hey(input) do
    is_string_all_caps =
      input
        |> String.replace(~r/[\d,? ]/, "")
        |> String.match?(~r/^[^a-z]+$/)

    cond do
      String.match?(input, ~r/^ *$/) ->
        "Fine. Be that way!"
      is_string_all_caps && String.ends_with?(input, "?") ->
        "Calm down, I know what I'm doing!"
      is_string_all_caps ->
        "Whoa, chill out!"
      String.ends_with?(input, "?") ->
        "Sure."
      true ->
        "Whatever."
    end
  end
end
