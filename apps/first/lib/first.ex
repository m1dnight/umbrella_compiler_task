defmodule First do
  @moduledoc """
  Documentation for `First`.
  """

  @doc """
  Hello world.

  ## Examples

      iex> First.hello()
      :world

  """
  def hello do
    struct = %Generated{}
    IO.inspect(struct)
  end
end
