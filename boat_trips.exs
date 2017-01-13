defmodule BoatTrips do
	[_, m, c] = IO.gets("") |> String.strip |> String.split |> Enum.map(&(String.to_integer(&1)))
	max = IO.gets("") |> String.strip |> String.split |> Enum.map(&(String.to_integer(&1))) |> Enum.max
	if max == m*c do
		IO.puts "Yes"
	else
		IO.puts "No"
	end
end