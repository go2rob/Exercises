def factorial(num)
	if num < 0
		return false
	else
		if num == 0
			fact  = 1
		else
			fact = num*factorial(num-1)
		end
	end
	fact
end
puts factorial(9359)