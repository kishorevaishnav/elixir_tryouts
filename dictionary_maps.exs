n = IO.gets("") |> String.strip |> String.to_integer
ll = for _ <- 1..n do
		IO.gets("") |> String.strip |> String.split |> List.to_tuple
	end |> Enum.into(%{})
IO.stream(:stdio, :line) 
	|> Enum.map(&String.strip/1)
	|> Enum.map(&(case ll[&1] do 
		:nil -> IO.puts "Not found"
		_ -> IO.puts "#{&1}=#{ll[&1]}"
	   end))
