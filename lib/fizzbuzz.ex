defmodule Fizzbuzz do
  @moduledoc """
  Because there has to be a fizz buzz somewhere, right?
  """

  def fizz do
    1..100
    |> Enum.map(fn x ->
      cond do
        rem(x, 15) == 0 -> "FizzBuzz"
        rem(x, 3) == 0 -> "Fizz"
        rem(x, 5) == 0 -> "Buzz"
        true -> x
      end
    end)
    |> Enum.each(fn x -> IO.puts(x) end)

    # Note: Enum.map would return a value but Enum.each would
    # return :ok and discard any value from the expression
  end
end
