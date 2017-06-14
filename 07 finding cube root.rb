def cube_root(number)
	i = 0
	while i**3 <= number
		if i**3 == number
			root = i
		else
			reminder = (number - i**3)*1000
			root = div_method(i, reminder)
		end
		i += 1
	end
	root
end
def div_method(r, rem)
	i = 1
	while i <=8
		temp = finder(r, rem)
		r = temp[0]*10
		rem = (rem - temp[1])*1000
		i += 1
	end
	r/(10**8)
end
def finder(root, rem)
	set  = []
		j = 0
		temp = 0
		while temp <= rem
			temp = (((root*30)*(root*10 + j)) + (j**2)) * j
			j += 1
		end
		set << root + (j-2)/10.0
		set << ((((root*30)*(root*10 + (j-2))) + ((j-2)**2)) * (j-2))
	set
end
puts cube_root(100)