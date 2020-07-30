defmodule Palindrome do
  @moduledoc """
  Module to test strings to see if they are palindromes
  """

  @doc """
  Test a string

  ## Example

    iex> Palindrome.test('dad')
    true
    iex> Palindrome.test('bad')
    false
  """
  def test([]), do: true

  def test(word) do
    reversed = reverse(word)
    IO.puts(reversed)
    IO.puts(word)
    word == reversed
  end

  defp reverse([]), do: []

  defp reverse(word) when not is_list(word) do
    ## Find out how best to convert
    ## strings into char list
    reverse(to_charlist(word))
  end

  defp reverse([h | t]) do
    reverse(t) ++ [h]
  end
end
