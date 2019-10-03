defmodule MyList do
  def len([]),              do: 0
  def len([ _head | tail ]),  do: 1 + len(tail)

  def square([]),               do: []
  def square([ head | tail ]),  do: [ head * head | square(tail) ]

  def add_one([]),               do: []
  def add_one([ head | tail ]),  do: [ head + 1 | add_one(tail) ]

  def map([], _func),               do: []
  def map([ head | tail ], func),   do: [ func.(head) | map(tail, func) ]

  def reduce([], value, _func) do
    value
  end

  def reduce([head | tail], value, func) do
    reduce(tail, func.(head, value), func)
  end

  def mapsum([]), do: []

  def mapsum(list, func) do
    map(list, func)
    |> reduce(0, &(&1 + &2))
  end

  def max(list) do
    _max(list, nil)
  end

  defp _max([], current_max) do
    current_max
  end

  defp _max([head | tail], current_max) when is_nil(current_max) do
    _max(tail, head)
  end

  defp _max([head | tail], current_max) when head > current_max do
    _max(tail, head)
  end

  defp _max([head| tail], current_max) when head < current_max do
    _max(tail, current_max)
  end

  def span(from, to) when from == to do
    [to]
  end

  def span(from, to) do
    [from | span(from + 1, to)]
  end
end