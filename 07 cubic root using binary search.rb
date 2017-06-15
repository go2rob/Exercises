def cube_root(number)
  l = 0
  r = number
  while l <= r
    m = (l + r)/2
    if (m**3) == number
      root = m
      break 
    elsif (m**3) > number
      r = m - 1
    elsif (m**3) < number
      l = m + 1
    end
    root = m
  end
  if (root**3) == number
    return root
  elsif l == root
    root = m-1
  else
    root
  end
    reminder = (number - (root**3))*1000
    root = div_method(root, reminder)
end
def div_method(r, rem)
  i = 1
  while i <=15
    temp = finder(r, rem)
    r = temp[0]*10
    rem = (rem - temp[1])*1000
    i += 1
  end
  r/(10**15)
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
x = 2
puts cube_root(x)
puts Math.cbrt(x)