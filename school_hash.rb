school_hash = [{:teacher => "Raju", :student => "Guru", :subject => "History", :mark1 => "100",   :mark2 => "100"},
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
# 1. Find the names of the students
# 2. Find the name of the Teachersa
# 3. Display student marks in each subjects
# 4. Which teacher have the best success rate with students? ie what is the average marks by teacher?
    # => 1
students = []
school_hash.collect{|hash| students << hash[:student] unless students.include?(hash[:student])}
p students
    # => 2
teachers = []
school_hash.collect{|hash| teachers << hash[:teacher] unless teachers.include?(hash[:teacher])}
p teachers
    # => 3
subjects = []
school_hash.collect{|hash| subjects << hash[:subject] unless subjects.include?(hash[:subject])}
marks = []
school_hash.each{|hash| marks << "#{hash[:student]} scored #{hash[:mark1]} and then #{hash[:mark2]} in #{hash[:subject]}"}
p marks.sort{|a,b| a <=> b}
    # => 4
average = []
teachers.each{ |teacher| school_hash.each{|hash| average << [hash[:teacher], (hash[:mark1].to_i + hash[:mark2].to_i)/2.0]  if (teacher == hash[:teacher])}}
marks_by_teacher =  teachers.collect {|teacher| average.each_with_object([]) {|element, marks| marks << element[1] if element[0] == teacher}}
marks_by_teacher.map!{|array| array.reduce(:+)/array.length}
best_teacher = teachers.zip(marks_by_teacher).max_by{|set| set[1]}
p "Teacher with best success rate is #{best_teacher[0]} with average of #{best_teacher[1].round(2)}"