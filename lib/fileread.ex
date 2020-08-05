defmodule Fileread do
  @moduledoc """
  Opening and reading files
  """

  @doc """
  Read hello world from a text file

  # Example
    iex>Fileread.hello
    "Hello, world!"
  """
  def hello do
    try do
      {:ok, contents} = File.read("devdocse/hello.txt")
      contents
    catch
      error -> IO.puts("Exited: #{inspect(error)}")
    end
  end
end
