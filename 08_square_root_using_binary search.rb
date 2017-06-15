def sq_root(number)
  l = 0
  r = number
  while l <= r
    m = (l + r)/2
    if (m**2) == number
      root = m
      break 
    elsif (m**2) > number
      r = m - 1
    elsif (m**2) < number
      l = m + 1
    end
    root = m
  end
  if (root**2) == number
    return root
  elsif l == root
    root = m-1
  else
    root
  end
    reminder = (number - (root**2))*100
    root = div_method(root, reminder)
end
def div_method(r, rem)
  i = 1
  while i <=14
    temp = finder(r, rem)
    r = temp[0]*10
    rem = (rem - temp[1])*100
    i += 1
  end
  r/(10**14)
end
def finder(root, rem)
  set  = []
  j = 0
  temp = 0
  while temp <= rem
    temp = (((root*20)+j)*j)
    j += 1
  end
  set << root + (j-2)/10.0
  set << (((root*20)+(j-2))*(j-2))
  set
end
x = 88
puts sq_root(x)
puts Math.sqrt(x)