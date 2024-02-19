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
  	
	all c : Course | enrolled.c in Student
}


pred inv2 {
	// Only professors can teach courses
  	
	all c : Course | teaches.c in Professor
}


pred inv3 {
	// Courses must have teachers
  	
	all c : Course | some teaches.c
}


pred inv4 {
	// Projects are proposed by one course
	all p : Project | one c : Course | c->p in projects  
}


pred inv5 {
	
	(all pj : Project | all p : Person | p->pj in projects implies p in Student)
	and
	(all pj : Project | some p : Person | p->pj in projects)
}


pred inv6 {
	// Students only work on projects of courses they are enrolled in
  	
	all s : Student | s.projects in s.enrolled.projects
}


pred inv7 {
	// Students work on at most one project per course
  	
  	
	all s : Student | all c : Course | lone (s.projects & c.projects)
}


pred inv8 {
	// A professor cannot teach herself
	
  	all p : Professor | no (p.teaches & p.enrolled)
}


pred inv9 {
	// A professor cannot teach colleagues
	all p,a : Professor | all c1,c2 : Course | p->c1 in teaches and a->c1 in enrolled and a->c2 in teaches implies p->c2 not in enrolled
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
