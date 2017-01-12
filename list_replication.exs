# This the best solution than below

defmodule Solution do
	n = IO.gets("") |> String.strip |> String.to_integer
	IO.stream(:stdio, :line) |> Enum.map(&String.strip/1)
	  |> Enum.flat_map(&Enum.map(1..n, fn _ -> &1 end))
	  |> Enum.each(&IO.puts(&1))
end

# ------

defmodule ListReplication do
	require Integer
	def readNum do
		n = IO.gets ""
		if "\n" != n do
			{num, _} = Integer.parse(n)
			num
		end
	end

	def readNumUntilNil do
		num = readNum
		if !is_nil(num) do
			[num | readNumUntilNil]
		else
			[]
		end
	end

	def displayNumbers(num, n) when n <= 1 do
		IO.puts num
	end

	def displayNumbers(num, n) do
		IO.puts num
		displayNumbers(num, n - 1)
	end
		
	def start do
		firstNumber = readNum
		# IO.puts firstNumber
		listOfNumbers = readNumUntilNil
		Enum.map(listOfNumbers, &(displayNumbers(&1, firstNumber)))
	end
end

defmodule Solution do
	alias ListReplication

	ListReplication.start
end
