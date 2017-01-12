defmodule Solution do
	m = IO.gets ""
	{n, _} = Integer.parse(m)
	k = for i<-1..n do
	  line=IO.gets ""
	  Regex.match?(~r/hackerrank/i,line)
	end
	IO.puts length(k -- List.duplicate(:false, n))
end



defmodule Solution do
	mc = IO.gets ""
	{mealCost, _} = Float.parse(mc)
	tipP = IO.gets ""
	{tipPercent, _} = Integer.parse(tipP)
	taxP = IO.gets ""
	{taxPercent, _} = Integer.parse(taxP)
	totalCost = round(mealCost + (mealCost * tipPercent /100) + (mealCost * taxPercent /100))
	IO.puts "The total meal cost is #{totalCost} dollars."
end


If  is odd, print Weird
If  is even and in the inclusive range of  to , print Not Weird
If  is even and in the inclusive range of  to , print Weird
If  is even and greater than , print Not Weird

defmodule Solution do
	num = IO.gets ""
	{n, _} = Integer.parse(num)
	case rem(n,2) do
		0 ->
			cond do
				n >20 ->
					IO.puts "Not Weird"
				n >=6 && n <=20 ->
					IO.puts "Weird"
				n >=2 && n <=5 ->
					IO.puts "Not Weird"
			end
		1 ->
			IO.puts "Weird"
	end
end



defmodule Solution do
	num = IO.gets ""
	{n, _} = Integer.parse(num)
	m = for _ <- 1..n do
		num = IO.gets ""
		{p, _} = Integer.parse(num)
		p
	end
	for eachm <- m, do: IO.puts Enum.reduce(Enum.to_list(1..eachm-1), 0, &(&2+(if (rem(&1,3)==0||rem(&1,5)==0), do:  &1, else: 0)))
end