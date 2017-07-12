def display(:sou, :des)
  puts :sou
end
def solve(n)
  poles = {:a => pole_1 = (1..n).to_a, :b => pole_2 = [], :c => pole_3 = []}
 if n == 1 display(poles.key(pole_1), poles.key(pole_3))
 end
end


solve(1)