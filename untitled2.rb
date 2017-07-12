# require 'byebug'
# byebug
# class Fun
#   def twice
#     "#{self*2}"
#   end
# end
# p 4.twice

# a = [ {:type=>"Meat", :name=>"one"}, 
#   {:type=>"Meat", :name=>"two"}, 
#   {:type=>"Fruit", :name=>"four"} ]


# p a.inject(Hash.new([])) { |h, a| h[a[:type]] += [a[:name]]; h }


# p a.group_by{|h| h[:type]}.each{|_, v| v.map!{|h| h[:name]}}
# p h = Hash.new()
# a =  597.7/6.0
# p a.round(2)
# p (1..5).to_a
# h = {:a => f = 1, :b => s = 2, :c => l = 3}
# p h.key(p)

# f /rob/ =~ 'robertson'
# /i/.methods
# s = ["Dom", "Mal"]
# l = ["Dom", "Mal", "Eames", "Arthur", "Ariadne", "Saito"]
# # p l.keep_if{|x| s.include?(x) }

# # p l.sort_by{ |x| x.tr(',','') &&  if s.include?(x)}
# a = ['d','b','a','c', 'e', "\u2013", '1,222,333', '0', '1,222', '0', '-2,333']
# b = ['e','d']

# p a.group_by{|x| x.tr(',','').to_i }[0].delete_if{|x| x == "0"}.sort + a.keep_if{|x| x if /[0-9]/.match(x)}.sort_by{|x| x.tr(',','').to_i }
# p 
# puts "\u2013"

# p a.sort_by{|a,b| m.index(a) <=> m.index(b)}

# filenames = ["z.pdf", "z.txt", "a.pdf", "z.rf", "a.rf","a.txt", "z.html", "a.html"]
# extensions = ["html", "txt", "pdf", "rf"]

# p sorted = filenames.sort_by{|fn| [extensions.index(File.extname(fn)[1..-1]), fn]} use it

# a = ['Aug','Dec','Nov','Feb','Jan','Jul','Jun','Sep','May','Oct','Mar','Apr']
# m = ['Jan','Feb','Mar','Apr','May','Jun','Jul','Aug','Sep','Oct','Nov','Dec']
# p a.sort_by{|x| DateTime.parse(x) }

# require 'date'
# d = ["Jun 27, 2017 10:04 AM", "Jun 27, 2017 10:36 AM", "Jun 27, 2017 7:13 PM", "Jun 28, 2017 9:57 AM", "Jun 28, 2017 6:10 PM", "Jun 28, 2017 6:30 PM", "Jun 29, 2017 4:00 AM", "Jun 29, 2017 5:00 AM", "Jun 29, 2017 6:00 AM", "Jun 29, 2017 7:00 AM", "Jun 29, 2017 9:00 AM", "Jun 29, 2017 10:21 AM"]
# # p d.collect{|a| DateTime.parse(a)}
# d_time = ["Jun 27, 2017 10:04 AM", "Jun 27, 2017 10:36 AM", "Jul 27, 2016 7:13 PM", "Apr 28, 2017 9:57 AM", "Jul 28, 2017 6:10 PM", "Jun 28, 2015 6:30 PM", "Jun 29, 2017 4:00 PM", "Jun 29, 2017 4:00 AM", "Jun 29, 2017 6:00 AM", "Jun 29, 2017 7:00 AM", "Jun 29, 2017 9:00 AM", "Jun 29, 2017 10:21 AM"]
# $month_order = {:jan => 1, :feb => 2, :mar => 3, :apr => 4, :may => 5, :jun => 6, :jul => 7, :aug => 8, :sep => 9, :oct => 10, :nov => 11, :dec => 12}
# a = Time.now

# def filter(list)
#   list.group_by{|ary| ary[1][i] 
#       }.sort_by{|k,v| k
#         }.map { |ary| ary[1] }
# end

# def sort_it(array)
#   array.map { |x| [x, x.split(/[, :]/)] }.group_by{|year| year[1][3].to_i 
#       }.sort_by{|k,v| k
#         }.map { |ary| ary[1] 
#           }.map { |ary| ary.group_by{|month| $month_order[month[1][0].downcase.to_sym] 
#             }.sort_by{|k,v| k 
#               }.map { |ary| ary[1] 
#                 }.map { |ary| ary.group_by{|day| day[1][1].to_i 
#                   }.sort_by{|k,v| k 
#                     }.map { |ary| ary[1] 
#                       }.map { |ary| ary.group_by{|meridian| meridian[1][6] 
#                         }.sort_by{|k,v| k 
#                           }.map { |ary| ary[1] 
#                             }.map { |ary| ary.group_by{|hour| hour[1][4].to_i 
#                               }.sort_by{|k,v| k 
#                                 }.map { |ary| ary[1] 
#                                   }.map { |ary| ary.group_by{|min| min[1][5].to_i 
#                                     }.sort_by{|k,v| k 
#                                       }.map { |ary| ary[1] } } } } } }.flatten(6).map { |val| val[0] }
# end

# p sort_it(d_time)
# b = Time.now
# p b-a

# p DateTime.parse("Jun 27, 2017 10:04 AM")
# p DateTime.parse("Jun 27, 2017 22:04 PM")

# a = [4,27,73,5,1,8,22]
# p "#{a} unsorted"
# def swap(array, index)
#   array[array.index(array.min)], array[index] = array[index], array[array.index(array.min)]
# end
# swap(a, 0)
# swap()

# p a
# a[a.index(a.min)], a[0] = a[0], a[a.index(a.min)]
# p "#{a} sorted"
# b = ["Dom","Mal","Saito","Robert","Eames","Ariadne","Arthur"]

# b = ["Dom","Mal","Saito","Robert", "lock","Eames","Ariadne","Arthur", "-123,222", "234,999", "0", "-12", "25", "\u2013", "lock"]
# spl = ['Dom','Robert','Eames','Arthur','Ariadne','Mal','Saito', 'lock', "\u2013"]
# a = Time.now
# metric = ["lock", "2,846,313", "2,394,553", "2,218,457", "0", "-2,008,357", "1,636,455", "1,566,188", "\u2013", "1,463,328", "1,226,015", "1,192,879", "1,168,561", "1,143,946", "1,129,542", "1,099,197", "1,077,611", "1,073,645", "1,055,631", "1,051,852", "1,007,585", "971,993", "753,176", "667,725", "650,537", "606,582", "577,502", "567,236", "560,004", "450,329", "364,040", "328,312", "309,222", "289,322", "265,332", "265,127", "258,824", "218,196", "159,939", "28,328", "20,411", "17,556", "14,702", "5,366", "3,343", "2,372", "–", "–", "–", "lock", "lock", "lock", "lock"]
# spl = ["lock", "\u2013"]
# group = metric.partition { |e| e.match(/[0-9]/) }
# group[1].sort_by{|string| spl.index(string) } + group[0].sort_by{|number| number.tr(',','').to_i }
# b = Time.now
# p b-a
st = Time.now
def check_sorted?(array)
  check = true
  i = 0
  while (i < array.length - 1)
    check = check && array[i] <= array[i + 1]
    i += 1
  end
  check
end
duration = ["2m17s", "2m25s", "2m29s", "6m2s", "5m45s", "5m53s", "6m", "1h7m3s", "20m4s", "21m34s", "2h", "35s"]
def sort(a)
  while (check_sorted?(a) == false)
    a = a.shuffle
    check_sorted?(a)
  end
  a
end
p sort(duration)
en = Time.now
p en-st