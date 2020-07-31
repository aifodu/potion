defmodule ListSummary do
  @moduledoc """
  Provides a collection of list flattening strategies
  """

  @doc """
  Sums the square of numbers in a list

  ## Example

    iex> ListSummary.sum_of_squares([1..10])
    385
  """
  def sum_of_squares([list] \\ [1..10]) do
    list |> Enum.map(fn x -> x * x end) |> Enum.reduce(0, fn x, acc -> x + acc end)
  end
end
