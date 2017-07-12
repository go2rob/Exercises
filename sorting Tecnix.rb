a = [4,27,73,5,1,8,22]
b = ["Dom","Mal","Saito","Robert","Eames","Ariadne","Arthur"]
# p "#{a} given"
# p "#{a.sort} expected"
def swap(ary, a, b)
  ary[a], ary[b] = ary[b], ary[a]
end
# => Bubble sort
def b_sort(a)
  for i in 0..(a.length - 2)
    for j in 1..(a.length - 1)
      swap(a, i, j) if (a[i] > a[j] && i < j)
    end
  end
  a
end
# p "#{b_sort(a)} Bubble sorted"
st = Time.now
# => Insertion sort
p a
def check_sorted?(array)
  check = true
  i = 0
  while (i < array.length - 1)
    check = check && array[i] <= array[i + 1]
    i += 1
  end
  check
end
def i_sort(a)
  for i in 0..(a.length - 2)
    if (check_sorted?(a.first(i+1)) == true)
      # p a.first(i + 1)
      if (a[i] > a[i+1])
        swap(a, i, (i + 1))
      end
    else
      # p [a[i + 1], a[i + 2]]
      # a = i_sort(a.first(i+1)) + a.last(a.length - (i + 1))
     a = i_sort(a.first(i+1)) + (a - a.dup.shift(i + 1))
    end
  end
  a
end
p i_sort(a)
en = Time.now
p en-st