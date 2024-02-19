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
  
  no (Person-Student) & enrolled.Course
	// Only students can be enrolled in courses
	
}


pred inv2 {
  
  no (Person-Professor) & teaches.Course
	// Only professors can teach courses

}


pred inv3 {
  all x:Course | some teaches.x
  
	// Courses must have teachers

}


pred inv4 {
  all x:Project | one y:Course | y->x in projects
  
	// Projects are proposed by one course

}


pred inv5 {
  all x:Project, y:Person-Student | y->x not in projects
  all x:Project | some y:Student | y->x in projects
  
	// Only students work on projects and 
	// projects must have someone working on them

}

pred inv6 {
  all x:Student |  
	// Students only work on projects of courses they are enrolled in

}


pred inv7 {
	// Students work on at most one project per course

}


pred inv8 {
	// A professor cannot teach herself

}


pred inv9 {
	// A professor cannot teach colleagues

}


pred inv10 {
	// Only students have grades

}


pred inv11 {
	// Students only have grades in courses they are enrolled

}


pred inv12 {
	// Students have at most one grade per course

}


pred inv13 {
	// A student with the highest mark in a course must have worked on a project on that course

}


pred inv14 {
	// A student cannot work with the same student in different projects

}


pred inv15 {
	// Students working on the same project in a course cannot have marks differing by more than one unit

}
