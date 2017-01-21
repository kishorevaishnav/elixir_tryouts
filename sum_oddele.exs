IO.stream(:stdio, :line) 
  |> Enum.map(&String.strip/1)
  |> Enum.map(&String.to_integer/1)
  |> Enum.filter(&(rem(&1,2)!=0))
  |> Enum.sum
  |> IO.puts



  # |> Enum.filter(fn(x) -> rem(x, 2) == 0 end)

# IO.stream(:stdio, :line) 
#   |> Enum.map(&String.strip/1)
#   |> Enum.filter(&(rem(&1,2)!=0))
#   |> Enum.sum
#   |> IO.puts

# # ----------------

# [1,2,3,4,3,3,3]  |> Enum.reduce(fn (x, y) -> if rem(x,2)!=0, do: x+y, else: y end) |> IO.puts

# # ----------------

