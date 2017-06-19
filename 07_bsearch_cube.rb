def search(l, r, &block)
  m = l + ((r - l) / 2)
  return m if(l > r)
  case(block.call(m))
  when -1
    search((m + 1), r, &block)
  when 1
    search(l, (m - 1), &block)
  when 0
    m
  end
end
def find_cube(n)
  root = nil
  result = search(0, n) { |value|
    ((value ** 3) <=> n)
  }
  if ((result ** 3) == n)
    return result
  else
  16.times { |i|
    result = search(((result * 10) + 0), ((result * 10) + 9)) { |value|
    (value ** 3) <=> (n * (1000 ** (i + 1)))
  }
  root = result / (10.0 ** (i + 1))
}
root
end
end
x = 4930355
puts find_cube(x)
puts Math.cbrt(x)