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
students = school_hash.group_by{|h| h[:student]}.keys

        # => 2. Find the name of the Teachers
teachers = school_hash.group_by{|h| h[:teacher]}.keys

        # => 3. Display student marks in each subjects
students
.zip(school_hash.group_by{
        |h| h[:student]
        }.map {
         |k,v| (school_hash.group_by{
                |h| h[:subject]
                }.keys)
         .zip(v.map{
                |h| [h[:mark1],h[:mark2]] 
                }).to_h 
         }).to_h

        # => 4. Which teacher have the best success rate with students? ie what is the average marks by teacher?
p teachers.zip(school_hash.group_by{|h| h[:teacher]}.map { |k,v| v.collect { |h| (h[:mark1].to_i + h[:mark2].to_i)/2.0 } }.collect{ |arr| (arr.reduce(:+).to_f / arr.size).round(2)}).max_by{|a| a[1]}