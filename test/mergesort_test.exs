defmodule MergesortTest do
  use ExUnit.Case

  test "return [] when empty" do
    assert [] == Mergesort.sort([])
  end

  test "sort returns sorted list when given reversed list" do
    assert [1, 2, 3, 4] == Mergesort.sort([4, 3, 2, 1])
  end

  test "merge returns [] when given empty lists" do
    assert [] == Mergesort.merge([], [])
  end

  test "merge returns side when other is empty" do
    l = [1, 2, 4, 5]
    ^l = Mergesort.merge(l, [])
    ^l = Mergesort.merge([], l)
  end

  test "merge returns merged list" do
    left = [1, 3, 5, 7]
    right = [2, 4, 6, 8]

    assert [1, 2, 3, 4, 5, 6, 7, 8] ==
             Mergesort.merge(
               left,
               right
             )
  end
end
