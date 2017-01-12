#bottles of beer

# used the ranges
defmodule BottlesOfBeer do
	def writeText(first..last) when first == last do
		IO.puts "#{first} bottle of beer on the wall, #{first} bottle of beer. Take it down, pass it around, no more bottles of beer on the wall."
	end

	def writeText(first..last) when first == last+1 do
		IO.puts "#{first} bottles of beer on the wall, #{first} bottles of beer. Take one down, pass it around, 1 more bottle of beer on the wall."
		writeText(first-1..last)
	end

	def writeText(first..last) do
		IO.puts "#{first} bottles of beer on the wall, #{first} bottles of beer. Take one down, pass it around, #{first-1} more bottles of beer on the wall."
		writeText(first-1..last)
	end

end