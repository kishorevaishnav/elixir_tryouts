defmodule Gcd do
	# def calc(x,0), do: x
	def calc(x,y) when y==x, do: x
	def calc(x,y) when y>x, do: calc(y,x)
	def calc(x,y) do
		# IO.puts "#{x},#{y}"
		[_,y,reminder] = calcdiv(x,y,1)
		if reminder !=0 do
			calc(y,reminder)
		else
			y
		end
	end
	def calcdiv(x,y,n) when div(x,y*n)>0, do: calcdiv(x,y,n+1)
	def calcdiv(x,y,_), do: [x,y,rem(x,y)]
end
[x,y]=IO.gets("") |> String.strip |> String.split |> Enum.map(&String.to_integer/1)
# IO.puts "GCD(#{x},#{y}) = #{Gcd.calc(x,y)}"
IO.puts Gcd.calc(x,y)