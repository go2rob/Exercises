def palindrome(number)
	palindrome_numbers = []
	for item in 0..number
		if item.to_s.reverse!.to_i == item
			palindrome_numbers << item
		end
	end
	palindrome_numbers
end
puts "#{palindrome(100)}"