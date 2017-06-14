def fibonacci_till_n(number)
	fibonacci = []
	first = 0
	second = 1
	last = 0
	(0..number).each do |item| 
		if item <= 1
			last = item
		else
			last = first + second 
			first = second 
			second = last
		end
			if last <= number && number != 1 &&  number != 2 &&  number != 3
				fibonacci << last  #&& number != 1 &&  number != 2 &&  number != 3
			elsif number == 1
				fibonacci = [0, 1, 1]
			elsif number == 2
				fibonacci = [0, 1, 1, 2]
			elsif number == 3
				fibonacci_till_n(4) # fibonacci = [0, 1, 1, 2, 3]
			end

	end
	fibonacci
end
puts "#{fibonacci_till_n(2)}"