defmodule ArrayMElements do
	n = IO.gets("") |> String.strip |> String.to_integer
	IO.inspect Enum.to_list(1..n)
end