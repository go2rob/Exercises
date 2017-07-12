school_hash = [{:teacher => "Raju", :student => "Guru", :subject => "History", :mark1 => "100", :mark2 => "100"},
        {:teacher => "Shanta", :student => "Murali", :subject => "Geography", :mark1 => "80", :mark2 => "60"},
        {:teacher => "Prabhu", :student => "Guru", :subject => "Maths", :mark1 => "90", :mark2 => "95"},
        {:teacher => "Raju", :student => "Murali", :subject => "Civics", :mark1 => "100", :mark2 => "100"},
        {:teacher => "Raju", :student => "Guru", :subject => "Civics", :mark1 => "85", :mark2 => "80"},
        {:teacher => "Raju", :student => "Jansi", :subject => "Civics", :mark1 => "80", :mark2 => "70"},
        {:teacher => "Raju", :student => "Jansi", :subject => "History", :mark1 => "100", :mark2 => "70"},
        {:teacher => "Raju", :student => "Murali", :subject => "History", :mark1 => "70", :mark2 => "100"},
        {:teacher => "Shanta", :student => "Guru", :subject => "Geography", :mark1 => "80", :mark2 => "90"},
        {:teacher => "Shanta", :student => "Jansi", :subject => "Geography", :mark1 => "60", :mark2 => "100"},
        {:teacher => "Prabhu", :student => "Murali", :subject => "Maths", :mark1 => "100", :mark2 => "85"},
        {:teacher => "Prabhu", :student => "Jansi", :subject => "Maths", :mark1 => "100", :mark2 => "90"}]
        # => 1. Find the names of the students
p students = school_hash.map{|hash| hash[:student]}.uniq
                # => or
p students = school_hash.group_by{|hash| hash[:student]}.map { |k,v| k }

        # => 2. Find the name of the Teachers
p teachers = school_hash.map{|hash| hash[:teacher]}.uniq
                # => or
p teachers = school_hash.group_by{|hash| hash[:teacher]}.map { |k,v| k }

        # # => 3. Display student marks in each subjects
p subjects = school_hash.map{|hash| hash[:subject]}.uniq
# p marks = students.zip(school_hash.group_by{|hash| hash[:student]}.map { |k,v| v.group_by{|h| h[:subject]}.each{|k, v| v.map!{|h| ary = h[:mark1], h[:mark2] } } }).to_h
                # => or
p marks = students.zip(school_hash.group_by{|hash| hash[:student]}.map { |k,v| subjects.zip(v.map{|h| [h[:mark1],h[:mark2]]  }).to_h }).to_h
p students.zip(school_hash.group_by{|h| h[:student]}.map { |k,v| v.collect{|h| h.reject{|k,v| k == :teacher || k == :student}.values } }).to_h
# p marks = school_hash.group_by{|hash| hash[:student]}.each{|k,v| v.map!{|hash| hash.select  {|k,v| k == :subject || k == :mark1 || k == :mark2}}}
# p marks = school_hash.group_by{|hash| hash[:student]}.collect{|k,v| v.map!{|hash| {hash[:subject] => [hash[:mark1], hash[:mark2] ]}}}
# p school_hash.inject(Hash.new([])) { |h, a| h[a[:student]] += [a[:subject]]; h }
p best_teacher = school_hash.group_by{|h| h[:teacher]}.map { |k,v| v.collect { |h| (h[:mark1].to_i + h[:mark2].to_i)/2.0 } }
p teachers.zip(best_teacher.collect{ |array| array.reduce(:+).to_f / array.size}).max_by{|a| a[1]}

# => 4. Which teacher have the best success rate with students? ie what is the average marks by teacher?
# p best = school_hash.group_by{|hash| hash[:teacher]}#.map{|k,v| v }





#[{:teacher=>"Raju", :student=>"Guru", :subject=>"History", :mark1=>"100", :mark2=>"100"}, 
# {:teacher=>"Prabhu", :student=>"Guru", :subject=>"Maths", :mark1=>"90", :mark2=>"95"}, 
# {:teacher=>"Raju", :student=>"Guru", :subject=>"Civics", :mark1=>"85", :mark2=>"80"}, 
# {:teacher=>"Shanta", :student=>"Guru", :subject=>"Geography", :mark1=>"80", :mark2=>"90"}]