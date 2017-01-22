defmodule Fibonacci do
	def calc(1), do: 0
	def calc(2), do: 1
	def calc(n), do: calc(n-1) + calc(n-2)
end
IO.gets("") |> String.strip |> String.to_integer |> Fibonacci.calc |> IO.puts
