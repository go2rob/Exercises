# => sort_by_Duration
duration = ["2m17s", "2m25s", "2m29s", "5m45s", "5m53s", "6m7s", "1h7m3s", "20m4s", "21m34s"]
  # => 1
Hash[Hash[duration.zip(duration.map{|time| time.split(/[a-zA-Z]/).reverse.each_with_index.map{|v,i| v.to_i * 60**i }.inject(:+) })].sort_by{|k,v| v}].keys
  # => 2 (Vasanth)
p duration.map {|v|
  [v, v.split(/[a-zA-Z]/).reverse.each_with_index.map{|v,i| v.to_i * 60**i }.inject(:+)]
}.sort { |a, b|
  a[1] <=> b[1]
}.map {|v| v[0]}

# => sort_by_Metric
metric = ["lock", "2,846,313", "2,394,553", "2,218,457", "0", "-2,008,357", "1,636,455", "1,566,188", "\u2013", "1,463,328", "1,226,015", "1,192,879", "1,168,561", "1,143,946", "1,129,542", "1,099,197", "1,077,611", "1,073,645", "1,055,631", "1,051,852", "1,007,585", "971,993", "753,176", "667,725", "650,537", "606,582", "577,502", "567,236", "560,004", "450,329", "364,040", "328,312", "309,222", "289,322", "265,332", "265,127", "258,824", "218,196", "159,939", "28,328", "20,411", "17,556", "14,702", "5,366", "3,343", "2,372", "–", "–", "–", "lock", "lock", "lock", "lock"]

p metric.group_by{|str| 
  str.tr(',','').to_i }[0].delete_if{|x| x == "0"}.sort + 
metric.keep_if{|e|
  e if /[0-9]/.match(e)}.sort_by{|num| num.tr(',','').to_i }

# => sort_by_Date_and_time
d_time = ["Jun 27, 2017 10:04 AM", "Jun 27, 2017 10:36 AM", "Jul 27, 2016 7:13 PM", "Apr 28, 2017 9:57 AM", "Jul 28, 2017 6:10 PM", "Jun 28, 2015 6:30 PM", "Jun 29, 2017 4:00 PM", "Jun 29, 2017 4:00 AM", "Jun 29, 2017 6:00 AM", "Jun 29, 2017 7:00 AM", "Jun 29, 2017 9:00 AM", "Jun 29, 2017 10:21 AM"]
$month_order = {:jan => 1, :feb => 2, :mar => 3, :apr => 4, :may => 5, :jun => 6, :jul => 7, :aug => 8, :sep => 9, :oct => 10, :nov => 11, :dec => 12}

def sort_it(array)
  array.map { |x| [x, x.split(/[, :]/)] }.group_by{|year| year[1][3].to_i 
      }.sort_by{|k,v| k
        }.map { |ary| ary[1] 
          }.map { |ary| ary.group_by{|month| $month_order[month[1][0].downcase.to_sym] 
            }.sort_by{|k,v| k 
              }.map { |ary| ary[1] 
                }.map { |ary| ary.group_by{|day| day[1][1].to_i 
                  }.sort_by{|k,v| k 
                    }.map { |ary| ary[1] 
                      }.map { |ary| ary.group_by{|meridian| meridian[1][6] 
                        }.sort_by{|k,v| k 
                          }.map { |ary| ary[1] 
                            }.map { |ary| ary.group_by{|hour| hour[1][4].to_i 
                              }.sort_by{|k,v| k 
                                }.map { |ary| ary[1] 
                                  }.map { |ary| ary.group_by{|min| min[1][5].to_i 
                                    }.sort_by{|k,v| k 
                                      }.map { |ary| ary[1] } } } } } }.flatten(6).map { |val| val[0] }
end

p sort_it(d_time)

# sort_it(d_time)
# .sort_by{|year| year[3].to_i }
# .sort_by{|mon| month[mon[0].downcase.to_sym]}
# .sort_by{|day| day[1].to_i}
# .sort_by{|meridian| meridian[6] }
# .sort_by{|hour| hour[4].to_i }
# .sort_by{|min| min[5].to_i}

