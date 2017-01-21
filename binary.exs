defmodule Binary do
	def convertInteger(1), do: 1
	def convertInteger(0), do: 0
	def convertInteger(n), do: [convertInteger(div(n,2)), rem(n,2)]
end
n = IO.gets("") |> String.strip |> String.to_integer
Binary.convertInteger(n) |> List.flatten |> Enum.join("") |> String.split("0") |> Enum.map(&(String.length(&1))) |> Enum.max |> IO.puts