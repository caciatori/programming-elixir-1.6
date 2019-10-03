defmodule Mathematics do
  def sum 0 do
    0
  end

  def sum number do
    number + sum(number - 1)
  end
end