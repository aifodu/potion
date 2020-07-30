defmodule Flatten do
  @moduledoc """
  Provides a collection of list flattening strategies
  """

  @spec flatten([any]) :: [any]

  @doc """
  Flatten a list that may contain other lists into a single list

  ## Example

    iex> Flatten.flatten([1, [2], [3, 4]])
    [1, 2, 3, 4]
  """

  def flatten([]), do: []
  def flatten([h | t]) when is_list(h), do: h ++ flatten(t)
  def flatten([h | t]), do: [h] ++ flatten(t)
end
