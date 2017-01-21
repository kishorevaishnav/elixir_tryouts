n=IO.gets("") |> String.strip |> String.to_integer
IO.gets("") |> String.strip |> String.split |> Enum.chunk(n,n*1000) |> List.flatten |> Enum.reverse |> Enum.join(" ") |> IO.puts