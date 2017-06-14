def list_prime(number) # prime number listing function
	prime_numbers = []
	(1..number).each do |item|
		if is_prime?(item)
			prime_numbers << item
		end
	end
	prime_numbers
end

def is_prime?(num) # prime number checking fuction
  temp = 0
  if num == 1
    temp = 1
  else
    for item in 2..num
      if num % item == 0 && item != num
        temp = 1
      end
    end
  end
  temp != 1
end
puts "#{list_prime(100)}"