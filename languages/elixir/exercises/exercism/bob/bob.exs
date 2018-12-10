defmodule Bob do
  import String

  def hey(input) do
    cond do
      silence?(input) ->
        "Fine. Be that way!"
      shouting_question?(input) ->
        "Calm down, I know what I'm doing!"
      shouting?(input) ->
        "Whoa, chill out!"
      question?(input) ->
        "Sure."
      true ->
        "Whatever."
    end
  end

  def silence?(input), do: trim(input) == ""

  def shouting?(input), do: input != downcase(input) && input == upcase(input)

  def shouting_question?(input), do: shouting?(input) && question?(input)

  def question?(input), do: ends_with?(input, "?")
end
