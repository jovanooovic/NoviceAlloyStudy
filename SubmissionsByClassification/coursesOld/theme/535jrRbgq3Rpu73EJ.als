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
  	Course in Professor.teaches
}


pred inv4 {
	// Projects are proposed by one course
  	all p : Project | one c : Course | p in c.projects
}


pred inv5 {
	// Only students work on projects and 
	// projects must have someone working on them
	no (Person - Student).projects
  	all p : Project | some pe : Person | p in pe.projects
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
