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
  all p:Person, c:Course | c in p.enrolled implies p in Student

}


pred inv2 {
	// Only professors can teach courses
  all p:Person, c:Course | c in p.teaches implies p in Professor

}


pred inv3 {
	// Courses must have teachers
  all c:Course | some p:Professor | c in p.teaches

}


pred inv4 {
	// Projects are proposed by one course
  all p:Project | one c:Course | c in projects.p

}


pred inv5 {
	
  all proj:Project, p:Person | (p in projects.proj implies p in Student) and (some p2:Person | p2 in projects.proj)

}


pred inv6 {
	
  all s:Student, proj:Project | s in projects.proj implies (some c:Course | s in enrolled.c and proj in c.projects)
}


pred inv7 {
	// Students work on at most one project per course
  all s:Student, c:Course | lone p:Project | s in projects.p and p in c.projects
}


pred inv8 {
	// A professor cannot teach herself
  all p:Professor, c:Course | p in teaches.c implies p not in enrolled.c

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
