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
  
  	enrolled.Course in Student

}


pred inv2 {
	// Only professors can teach courses
  
  	teaches.Course in Professor

}


pred inv3 {
	// Courses must have teachers
  
  	Professor.teaches = Course

}


pred inv4 {
	// Projects are proposed by one course
  	all p : Project | one Course <: projects.p
}


pred inv5 {
	// Only students work on projects and 
	// projects must have someone working on them
  	no (Person-Student).projects
  	all p:Project | some Person <: (projects).p
  	

}





pred inv6 {
	// Students only work on projects of courses they are enrolled in
  	all s : Student | s.projects in s.enrolled.projects

}



pred inv7 {
	// Students work on at most one project per course
  	all s : Student, c : Course | c in s.enrolled implies lone c.projects & s.projects

}



pred inv8 {
	// A professor cannot teach herself
	all p : Professor | no p.enrolled & p.teaches
}


pred inv9 {
	// A professor cannot teach colleagues
	all p: Person | no ((p.teaches.~teaches)-p) & enrolled.(p.teaches)
}


pred inv10 {
	// Only students have grades
	no (Person-Student).(Course.grades)
}


pred inv11 {
	// Students only have grades in courses they are enrolled
	all c : Course, s : Student | some s.(c.grades) implies c in s.enrolled
}


pred inv12 {
	// Students have at most one grade per course
  	all s : Student, c : Course | lone s.(c.grades)
	
}


pred inv13 {
	// A student with the highest mark in a course must have worked on a project on that course
	all c : Course, s : c.grades.last | c in s.enrolled
}


pred inv14 {
	// A student cannot work with the same student in different projects
	all s: Student | all p: s.projects | Person :> ((projects.p)-s) not in projects.((s.projects)-p)
}


pred inv15 {
	// Students working on the same project in a course cannot have marks differing by more than one unit

}
