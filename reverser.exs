defmodule Reverser do
	def reverse([head | tail]) do
		reverse(tail)
		IO.puts head
	end

	def reverse([]) do
		nil
	end
end

list = IO.stream(:stdio, :line) 
  |> Enum.map(&String.strip/1)
Reverser.reverse(list)
