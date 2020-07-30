defmodule PotionTest do
  use ExUnit.Case
  doctest Potion

  test "greets the world" do
    assert Potion.hello("James") == "Hello, James!"
  end
end
