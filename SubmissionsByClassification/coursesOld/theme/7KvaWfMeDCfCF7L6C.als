open util/ordering[Grade]

sig Person {
	teaches : set Course,
	enrolled : set Course,
	projects : set Project
}

sig Professor,Student in Person {}

sig Course {
	projects : set Project,
	grades : Person -> Grade
}

sig Project {}

sig Grade {}

// Specify the following properties
// You can check their correctness with the different commands and
// when specifying each property you can assume all the previous ones to be true

pred inv1 {
	// Only students can be enrolled in courses
  	all p : enrolled.Course | p in Student

}


pred inv2 {
	// Only professors can teach courses
	  	all p : teaches.Course | p in Professor
  
}


pred inv3 {
	// Courses must have teachers
  all c: Course | some p : Professor | p in teaches.c

}


pred inv4 {
	// Projects are proposed by one course
  all p : Project | one c: Course | p in c.projects

}


pred inv5 {
	// Only students work on projects and 
	// projects must have someone working on them
  
  
  all p : Project | some Person.projects & p
  all p : Person | some p.projects implies p in Student
}


pred inv6 {
	// Students only work on projects of courses they are enrolled in
   all s : Student, p : Project | p in s.projects implies Course <: projects.p in s.enrolled  

}


pred inv7 {
	// Students work on at most one project per course
  all s : Student, c : Course | lone s.projects & c.projects

}


pred inv8 {
	// A professor cannot teach herself
	all p : Professor | no p.teaches & p.enrolled
    
}


pred inv9 {
	
	


}


pred inv10 {
	// Only students have grades
	Course.grades.Grade in Student
}


pred inv11 {
	// Students only have grades in courses they are enrolled
    all c: Course, pessoa: Student | pessoa in c.grades.Grade implies c in pessoa.enrolled 

}


pred inv12 {
	// Students have at most one grade per course
  all s : Student, c : s.enrolled | lone s.(c.grades)

}


pred inv13 {
	// A student with the highest mark in a course must have worked on a project on that course
  

}


pred inv14 {
	// A student cannot work with the same student in different projects
  all s1, s2: Student | s1 != s2 implies lone s1.projects & s2.projects 

}


pred inv15 {
	// Students working on the same project in a course cannot have marks differing by more than one unit
    


}
