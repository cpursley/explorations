defmodule Markdown do
  @doc """
    Parses a given string with Markdown syntax and returns the associated HTML for that string.

    ## Examples

    iex> Markdown.parse("This is a paragraph")
    "<p>This is a paragraph</p>"

    iex> Markdown.parse("#Header!\n* __Bold Item__\n* _Italic Item_")
    "<h1>Header!</h1><ul><li><em>Bold Item</em></li><li><i>Italic Item</i></li></ul>"
  """
  @spec parse(String.t()) :: String.t()
  def parse(markdown) do
    markdown
    |> String.split("\n")
    |> Enum.map_join(&process/1)
    |> replace_markdown()
  end

  defp process("#" <> _ = text), do: process_header(text)
  defp process("*" <> _ = text), do: process_list(text)
  defp process(text),            do: process_paragraph(text)

  defp process_header(header_text) do
    [hd | txt] = String.split(header_text)
    header = hd |> String.length() |> to_string()
    text = Enum.join(txt, " ")

    "<h" <> header <> ">" <> text <> "</h" <> header <> ">"
  end

  defp process_list(list_text) do
    "<li>" <> String.trim_leading(list_text, "* ") <> "</li>"
  end

  defp process_paragraph(text), do: "<p>#{text}</p>"

  defp replace_markdown(string) do
    string
    |> String.replace(~r/__(.*?)__/, "<strong>\\1</strong>", global: true)
    |> String.replace(~r/_(.*?)_/, "<em>\\1</em>", global: true)
    |> String.replace("<li>", "<ul>" <> "<li>", global: false)
    |> String.replace_suffix("</li>", "</li>" <> "</ul>")
  end
end
