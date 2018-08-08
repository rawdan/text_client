defmodule TextClient.Player do

  alias TextClient.State

  # won, lost, good guess, bad guess, already used, initializing
  def play(%State{tally: %{ game_state: :won}}) do
    IO.puts "You've won!"
    exit(:normal)
  end

  def play(%State{tally: %{ game_state: :lost}}) do
    IO.puts "Sorry, you've lost!"
    exit(:normal)
  end

  defp exit_with_message(msg) do
    IO.puts(msg)
    exit(:normal)
  end
end