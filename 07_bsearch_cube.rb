$counter = 0
def search(l, r, &block)
  m = l + ((r - l) / 2)
  puts "m:#{m},l:#{l},r:#{r}"
  return nil if(l > r)
  $counter += 1
  return "NEVERENDING" if($counter > 20)
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
  # result = search(1, n) { |value|
  #   puts "compare: #{((value ** 3) <=> n)}"
  #   ((value ** 3) <=> n)
  # }
  result = 4
  # if(result.nil?)
  #   result = search(1, n) { |value|
  #     puts "value: #{value}"
  #     cube = (value ** 3)
  #     if(cube < n)
  #       (((value + 1) ** 3) > n) ? 0 : -1
  #     else
  #       1
  #     end
  #   }
  # else
  #   return result
  # end
  
  $counter = 0
  puts "whole: #{result}"
  10.times { |i|
    dp = search(0, 9) { |value|
      frag = result + (value * (10 ** (i + 1)))
      if(frag == n)
        0
      elsif(frag < n)
        nfrag = result + ((value + 1) * (10 ** (i + 1)))
        (nfrag > n) ? 0 : -1
      else
        1
      end
    }
    result =  result + (dp * (10 ** (i + 1)))
  }
  return result
end
require 'byebug'
puts find_cube(124)