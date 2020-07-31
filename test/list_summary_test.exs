defmodule ListSummaryTest do
    use ExUnit.Case
    doctest ListSummary

    test "list square reduce" do
        expected = 385
        actual = ListSummary.sum_of_squares([1..10])

        assert actual == expected
    end
end
