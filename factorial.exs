defmodule Solution do
	def factorial(1), do: 1
	def factorial(n), do: n * factorial(n-1)
end
n=IO.gets("") |> String.strip |> String.to_integer
IO.puts(Solution.factorial(n))