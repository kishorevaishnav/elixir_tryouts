defmodule Pascaltraingle do
	def display(0), do: "1"
	def display(1), do: "1 1"
	def display(n) do
		abc = Enum.map(1..n-1, &( div(fact(n),(fact(&1)*fact(n-&1))) )) |> Enum.join(" ")
		"1 #{abc} 1"
	end
	def fact(1), do: 1
	def fact(n), do: n*fact(n-1) 
end

n = IO.gets("") |> String.strip |> String.to_integer
for x <-- 0..n-1 do
	IO.puts Pascaltraingle.display(x)
end
