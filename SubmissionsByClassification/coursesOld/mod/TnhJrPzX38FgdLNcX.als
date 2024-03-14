open util/ordering[Grade]

sig Person {
	teaches : set Course,
	enrolled : set Course,
	workson : set Project 
}

sig Professor,Student in Person {}

sig Course {
	proposes : set Project, 
	grades : Person -> Grade
}

sig Project {}

sig Grade {}

// Specify the following properties

// when specifying each property you can assume all the previous ones to be true

pred inv1 {
	// Only students can be enrolled in courses
	all p:Person, c:Course | p->c in enrolled implies p in Student
}


pred inv2 {
	// Only professors can teach courses
	all p:Person, c:Course | p->c in teaches implies p in Professor
}


pred inv3 {
	// Courses must have teachers
	all c:Course | some p:Professor | p->c in teaches
}


pred inv4 {
	// Projects are proposed by one course
	all p:Project | one c:Course | c->p in projects
}


pred inv5 {
	// Only students work on projects and 
	// projects must have someone working on them
  	(all per:Person, proj:Project | per->proj in projects implies per in Student) and (all proj:Project | some per:Person | per->proj in projects)

}


pred inv6 {
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
