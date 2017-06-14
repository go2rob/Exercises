def armstrong(number)
	a = []
	for i in 1..number
		if is_armstrong(i)
			a << i
		end
	end
	a
end

def is_armstrong(input)
	digits = 0
	sum = 0
	n = input
	num_array = []
	while n != 0
		num_array << n % 10
		digits += 1
		n /= 10
	end
	num_array.each do |digit|
		sum += digit ** digits
	end
		sum == input
end
puts "#{armstrong(1000)}"