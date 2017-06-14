def factorial(number)
	if number < 0
		return false
	else
		fact = 1
		for i in 1..number
		fact *= i
		end
	end
	fact
end
puts factorial(6)