defmodule PalindromeTest do
  use ExUnit.Case
  doctest Palindrome

  test "test a palindrome (pop)" do
    assert Palindrome.test('pop pop')
  end

  test "test a palindrome (mad)" do
    assert not Palindrome.test("mad")
  end
end
