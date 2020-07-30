defmodule FlattenTest do
  use ExUnit.Case
  doctest Flatten

  test "flatten list of lists into a single list" do
    expected = [1, 2, 3, 4, 5, 6]
    actual = Flatten.flatten([1, 2, [3, 4], [5], [6]])

    assert actual == expected
  end
end
