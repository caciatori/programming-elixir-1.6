defmodule Times do
  def double number do
    number * 2
  end

  def triple number do
    number * 3
  end

  def quadruple number do
    double(number) * double(number)
  end
end