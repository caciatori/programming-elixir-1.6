defmodule Enumeration do
  def all?([], _), do: true
  def all?([head | tail], fun), do: fun.(head) and all?(tail, fun)

  def each([], _), do: :ok
  def each([head | tail], fun) do
    fun.(head)
    each(tail, fun)
  end

  def filter([], _), do: []
  def filter([head | tail], fun) do
    if fun.(head) do
      [ head | filter(tail, fun) ]
    else
      filter(tail, fun)
    end
  end

  def split([], _), do: []
  def split([head | tail], currentIndex \\ 1, index) do
    if currentIndex == index do
      [ head | [tail] ]
    else
      [ head | split(tail, currentIndex + 1, index) ]
    end
  end
end