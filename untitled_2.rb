a = Time.now
duration = ["2m17s", "2m33s", "2m29s", "6m2s", "5m57s", "5m53s", "6m", "1h7m3s", "20m4s", "21m34s", "2h", "35s"]
def get(string)
  t = 0
  if string.match(/\d*h/)
    t += string.match(/\d*h/)[0].to_i*3600
  end
  if string.match(/\d*m/)
    t += string.match(/\d*m/)[0].to_i*60
  end
  if string.match(/\d*s/)
    t += string.match(/\d*s/)[0].to_i
  end
  t
end
p duration.sort_by{|d| get(d) }
b = Time.now
p b-a