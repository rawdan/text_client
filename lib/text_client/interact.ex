defmodule TextClient.Interact do

  alias TextClient.{Player, State}

  def start() do
    Hangman.new_game()
    |> setup_state()
    |> Player.play(state)
  end

  defp setup_state(game) do
    %TextClient.State{
      game_service: game,
      tally:        Hangman.tally(game),
    }
  end

end