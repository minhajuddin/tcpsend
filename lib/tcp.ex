defmodule TCP do
  @moduledoc """
  Documentation for `TCP`.
  """

  @doc """
  Hello world.

  ## Examples

      iex> TCP.hello()
      :world

  """
  def connect(port) do
    {:ok, conn} = :gen_tcp.connect('localhost', port, [:binary, {:active, true}])
    conn
  end

  def send(conn, binary) do
    :gen_tcp.send(conn, binary)
  end

end
