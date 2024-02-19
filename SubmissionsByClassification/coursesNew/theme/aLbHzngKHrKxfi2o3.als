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
  all p:Person-Student| no p.enrolled

}


pred inv2 {
	// Only professors can teach courses
	all p:Person-Professor | no p.teaches
}


pred inv3 {
	// Courses must have teachers
	all c:Course | some p:Professor | c in p.teaches
}


pred inv4 {
	// Projects are proposed by one course
  all p:Project | one c:Course | p in c.projects

}


pred inv5 {
	// Only students work on projects and 
	// projects must have someone working on them
  	all p:Person-Student | no p.projects
  	all p:Project | some s:Student | p in s.projects

}


pred inv6 {
	// Students only work on projects of courses they are enrolled in
	all s:Student, p:s.projects | p in s.enrolled.projects
}


pred inv7 {
	// Students work on at most one project per course
	all s:Student, c:s.enrolled | lone p:Project | p in c.projects && p in s.projects
}


pred inv8 {
	// A professor cannot teach herself
	all p:Professor, c: p.teaches | c not in p.enrolled
}


pred inv9 {
	// A professor cannot teach colleagues
  	all p:Professor, pp:Professor-p | some(p.teaches & pp.teaches) => no (p.teaches & pp.enrolled)
}


pred inv10 {
	// Only students have grades
  	all p:Person - Student , c:Course | p not in c.grades

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
