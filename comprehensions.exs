defmodule Comprehensions do
  require Integer

  def cards do
    suits = [:hearts, :diamonds, :clubs, :spades]
    faces = [2, 3, 4, 5, 6, 7, 8, 9, 10, :jack, :queen, :king, :ace]

    for suit <- suits, face <- faces, do: {suit, face}
  end

  def find_spades do
    for {:spades, face} <- cards(), do: {:spades, face}
  end

  def get_even(n) do
    for num <- 0..n, Integer.is_even(num), do: num
  end

  def join(list, separator) do
    for item <- list, into: "", do: "#{item}#{separator}"
  end

end

list = ['foo', 'bar', 'baz']
result = Comprehensions.join(list, ' // ')
IO.inspect(result)
