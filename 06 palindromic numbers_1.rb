def palindromic_numbers(n)
	palindrome_numbers = []
	for i in 0..n
		if is_palindrome(i)
			palindrome_numbers << i
		end
	end
	palindrome_numbers
end

def is_palindrome(input) 
	reversed = 0
	number  = input
	while number != 0
		reminder = number % 10
		reversed = reversed*10 + reminder
		number = number/10
	end
	input == reversed
end
puts "#{palindromic_numbers(100)}"