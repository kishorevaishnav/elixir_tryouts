defmodule FilterListOdd do
	IO.stream(:stdio, :line) 
	  |> Enum.map(&String.strip/1)
	  |> Enum.drop_every(2)
	  |> Enum.each(&IO.puts(&1))
end