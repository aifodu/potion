defmodule ParallelMap do
  @doc """
  This will perform the map by launching 100 different
  processes and utilising the cores of the computer

  # Example
  iex>ParallelMap.pmap(1..10, fn(n) -> n * n end)
  [1, 4, 9, 16, 25, 36, 49, 64, 81, 100]
  """
  def pmap(collection, f) do
    collection
    |> Enum.map(&Task.async(fn -> f.(&1) end))
    |> Enum.map(&Task.await/1)
  end
end
