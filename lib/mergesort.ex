defmodule Mergesort do
  @moduledoc """
  Mergesort-ing in O(n log(n))
  """

  def sort(list) do
    len = length(list)

    cond do
      list == [] ->
        []

      len <= 1 ->
        list

      true ->
        middle = div(len, 2)
        left = Enum.slice(list, 0, middle)
        right = Enum.slice(list, middle, len - middle)
        left = sort(left)
        right = sort(right)
        merge(left, right)
    end
  end

  def merge(left, right) do
    cond do
      left == [] -> right
      right == [] -> left
      hd(left) < hd(right) -> [hd(left)] ++ merge(tl(left), right)
      true -> [hd(right)] ++ merge(left, tl(right))
    end
  end
end
