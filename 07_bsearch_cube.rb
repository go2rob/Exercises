def search(l, r, &block)                                                                              # => O(log n)
  m = (l + r)  / 2                                              
  return m if(l > r)                                          # => O(n)                # => O(n) |
  case(block.call(m))                                         #                                  |
  when -1                                                     #                                  |
    search((m + 1), r, &block)                                # => O(n) |                        |    # => O(n)
  when 1                                                      #         |                        |  
    search(l, (m - 1), &block)                                # => O(n) | # => 3*O(n)| # => O(n) |                # => O(log n) * O(n)
  when 0                                                      #         |
    m                                                         # => O(n) |
  end
end
def find_cube(n)                                                    
  root = nil                                                  # => O(n)
  result = search(0, n) { |value|                             
    ((value ** 3) <=> n)          
  }           
  if ((result ** 3) == n)
    return result                                             # => O(n)           
  else                                                        #                     | # => O(log n)   # => O(n) + O(log n)
  16.times { |i|
    result = search(((result * 10) + 0), ((result * 10) + 9)) { |value| # => O(log n)   
    (value ** 3) <=> (n * (1000 ** (i + 1)))
  }
  root = result / (10.0 ** (i + 1))                           # => O(n)
}                                                             #                     | # => O(n)  
root                                                          # => O(n)
end
end
x = 148876                                                    # => O(n)
puts find_cube(x)
puts Math.cbrt(x)

# summary     (O(log n) * O(n)) + O(n) + O(log n) + O(n)
#             O(n * log n) + O(n) + O (log n)

# => O (n*log n)