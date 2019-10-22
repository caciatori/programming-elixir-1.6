defmodule Canvas do
  @default [fg: "black", bg: "white", font: "Merriweather"]

  def draw_text(text, options \\ []) do
    options = Keyword.merge(@default, options)
    IO.puts "Drawing text #{inspect(text)}"
    IO.puts "Foreground: #{options[:fg]}"
    IO.puts "Backgroung: #{options[:bg]}"
    IO.puts "Font: #{options[:font]}"
    IO.puts "Pattern: #{Keyword.get(options, :pattern, "solid")}"
    IO.puts "Style: #{Keyword.get(options, :style, "bold")}"

  end
end