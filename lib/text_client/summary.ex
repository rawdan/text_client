defmodule TextClient.Summery do

  def display(%{ tally: tally }) do
    IO.puts [
      "\n",
      "word so far:  #{Enum.join(tally.letters, " ")}",
      "Guesses left: #{tally.turns_left}\n"
    ]
  end
end