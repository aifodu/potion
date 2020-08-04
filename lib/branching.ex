defmodule Branching do
  @moduledoc """
  Trying out Elixir's conditional branching strategies
  """

  @spec switchy(number, number) :: <<_::32>> | integer

  @doc """
  Switchy does a switch-like conditional braching using Elixir's pattern matching
  Note that COND does not have an implicit fall through

  ..Unless one sets an always truthy expression at the tail end. If no condition
  is met an error is returned

  ## Example

    iex> Branching.switchy(8, 9)
    0

    iex> Branching.switchy(3, 2)
    "Else"
  """

  def switchy(x, y) do
    cond do
      x + y > 8 ->
        y = x - y * div(x, y)
        x = y - x
        x

      x - y < 0 ->
        x = y - x * div(y, x)
        y = x - y
        y

      # Comment the lines below to raise an exception
      true ->
        "Else"
    end
  end

  @doc """
  Like switchy but uses Elixi's COND construct but different in that it more
  locally test and branch different blocks of code, based on a single value.

  ## Example

    iex>branchlist = [1, 2, 3, 4]
    iex>Branching.cassio(branchlist)
    "Second element is 2, fourth is 4 and Result = 11!"
    iex>Branching.cassio([3, 7, 1, 4])
    "No please"
  """
  def cassio(list) do
    case list do
      [a, 2, c, 4] ->
        result = a + c * 4 - 2
        "Second element is 2, fourth is 4 and Result = #{result}!"

      ## The first to evaluate true will cancel further evaluations - as expected

      [a, 2, c, d] ->
        result = a + c * d - 2
        "Second element is 2 and Result = #{result}!"

      _ ->
        "No please"
    end
  end
end
