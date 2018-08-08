defmodule TextClient.Player do

  alias TextClient.State

  # won, lost, good guess, bad guess, already used, initializing
  def play(%State{tally: %{ game_state: :won}}) do
    exit_with_message("You've won!")
  end

  def play(%State{tally: %{ game_state: :lost}}) do
    exit_with_message("Sorry, you've lost!")
  end

  defp exit_with_message(msg) do
    IO.puts(msg)
    exit(:normal)
  end
end