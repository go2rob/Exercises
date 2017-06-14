def n_fibonacci(number)
	fibonacci = []
	first = 0
	second = 1
	(0...number).each do |item|
		if item <= 1
			last = item
		else
			last = first + second
			first = second
			second = last
		end
		fibonacci << last
	end
	fibonacci
end
puts "#{n_fibonacci(3)}"