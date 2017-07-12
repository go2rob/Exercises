# => Swap Function
def swap(array, a, b)
  array[a], array[b] = array[b], array[a]
end

duration = ["2m17s", "2m25s", "2m29s", "6m2s", "5m45s", "5m53s", "6m", "1h7m3s", "20m4s", "21m34s", "2h", "35s"]
def get(string)
  t = 0
    t += string.match(/\d*h/)[0].to_i*3600 if string.match(/\d*h/)
    t += string.match(/\d*m/)[0].to_i*60 if string.match(/\d*m/)
    t += string.match(/\d*s/)[0].to_i if string.match(/\d*s/)
  t
end
# => Bubble sort
def bubble_sort(a)
  for i in 0..(a.length - 2)
    for j in 1..(a.length - 1)
      swap(a, i, j) if (get(a[i]) > get(a[j]) && i < j)
    end
  end
  a
end
p bubble_sort(duration)