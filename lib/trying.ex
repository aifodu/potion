defmodule Trying do
  @moduledoc """
  Cathing error since '74
  """

  def resqueue do
    try do
      1 / 0
    rescue
      e in ArithmeticError -> e
    end
  end

  def cache_throw do
    try do
      throw(:fails)
    catch
      :throw, value -> IO.puts("Failure in above code: #{inspect(value)}")
    end
  end

  def cache_exit do
    try do
      exit(:exiterm)
    catch
      :exit, code -> IO.puts("Exited: #{inspect(code)}")
    end
  end

  def cache_error do
    try do
      :erlang.error("Something happened")
    catch
      error -> IO.puts("Exited: #{inspect(error)}")
    end
  end

  #   If there is no associated catch for specific errors the raise
  #   propagates up and is caught by the supervising process
end
