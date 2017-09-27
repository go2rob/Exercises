var school_hash = [
        {teacher : "Raju", student : "Guru", subject : "History", mark1 : 100, mark2 : 100},
        {teacher : "Shanta", student : "Murali", subject : "Geography", mark1 : 80, mark2 : 60},
        {teacher : "Prabhu", student : "Guru", subject : "Maths", mark1 : 90, mark2 : 95},
        {teacher : "Raju", student : "Murali", subject : "Civics", mark1 : 100, mark2 : 100},
        {teacher : "Raju", student : "Guru", subject : "Civics", mark1 : 85, mark2 : 80},
        {teacher : "Raju", student : "Jansi", subject : "Civics", mark1 : 80, mark2 : 70},
        {teacher : "Raju", student : "Jansi", subject : "History", mark1 : 100, mark2 : 70},
        {teacher : "Raju", student : "Murali", subject : "History", mark1 : 70, mark2 : 100},
        {teacher : "Shanta", student : "Guru", subject : "Geography", mark1 : 80, mark2 : 90},
        {teacher : "Shanta", student : "Jansi", subject : "Geography", mark1 : 60, mark2 : 100},
        {teacher : "Prabhu", student : "Murali", subject : "Maths", mark1 : 100, mark2 : 85},
        {teacher : "Prabhu", student : "Jansi", subject : "Maths", mark1 : 100, mark2 : 90}
];

//1. Find the names of the students
function displaySNames (){
        $('#ans_1').html(_.uniq(_.map(school_hash, 'student').sort()).join(', '));

}
//2. Find the name of the Teachers
function displayTNames (){
        $('#ans_2').html(_.uniq(_.map(school_hash, 'teacher')).join(', '));

}
//3. Display student marks in each subjects
function displayMarks(){
        
        var studentMarks = _
        .chain(school_hash)
        .groupBy('student')
        .mapValues(function(o){
                return (_.mapValues(_.groupBy(o, 'subject'), function(o){
                 return o[0].mark1 + o[0].mark2 + "(" + o[0].mark1 + "+" + o[0].mark2 + ")";})); // acc.to requirements
        })
        .value();
        str = JSON.stringify(studentMarks, null, 10); 
        alert(str);
}

//4. Which teacher have the best success rate with students? ie what is the average marks by teacher?
function displayBest(){
        var averageMarks = _.chain(school_hash)
                .groupBy('teacher')
                .mapValues(function(o){
                        var sum = 0;
                        var count = 0;
                        for (var i = 0; i < _.size(o); i++) {
                                sum = sum +o[i].mark1 + o[i].mark2;
                                count = count + 2.0;
                        }
                        return sum/count;
                })
                .value();

        alert(Object.keys(averageMarks).reduce(function(a, b){
            return averageMarks[a] > averageMarks[b] ? (a + " with " + averageMarks[a]) : (b + " with " + averageMarks[b]) 
        }));
        }
