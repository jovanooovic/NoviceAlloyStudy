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



pred inv10 {
	// Only students have grades
  all c : Course | (all p : Person, g : Grade | p->g in c.grades implies p in Student)

}


pred inv11 {
	// Students only have grades in courses they are enrolled
  all c: Course | (all p: Person, g: Grade | p->g in c.grades implies c in p.enrolled)

}


pred inv12 {
	// Students have at most one grade per course
  all c: Course | (all p: Person| lone g: Grade | p->g in c.grades)
}


pred inv13 {
	// A student with the highest mark in a course must have worked on a project on that course

}


pred inv14 {
	// A student cannot work with the same student in different projects
  all x: Student | all col : Student - x | lone (x.projects & col.projects)
  

}


pred inv15 {
	// Students working on the same project in a course cannot have marks differing by more than one unit
  

}
