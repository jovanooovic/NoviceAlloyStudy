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
	all c : Course, p : Person | p in enrolled.c implies p in Student
}


pred inv2 {
	// Only professors can teach courses
	all c : Course, p : Person | p in teaches.c implies p in Professor
}


pred inv3 {
	// Courses must have teachers
	all c : Course | some t : Professor | c in t.teaches
}


pred inv4 {
	// Projects are proposed by one course
	all p : Project | one c : Course | p in c.projects
}


pred inv5 {
	// Only students work on projects and 
	// projects must have someone working on them
	all p : Project, s : Person | p in s.projects implies s in Student
  	all p : Project | some s : Student | s in projects.p
}


pred inv6 {
	// Students only work on projects of courses they are enrolled in
	all s : Student, p : Project, c : Course | (p in s.projects and p in c.projects) implies c in s.enrolled
}


pred inv7 {
	// Students work on at most one project per course
	all s : Student, c : Course | lone p : Project | p in s.projects and p in c.projects
}


pred inv8 {
	// A professor cannot teach herself
	all p : Professor, c : Course | c in p.teaches implies c not in p.enrolled
}


pred inv9 {
	// A professor cannot teach colleagues
	all p1,p2 : Professor | some (p1.teaches & p2.teaches) implies (all c : Course | c in p1.teaches implies c not in p2.enrolled)
}


pred inv10 {
	// Only students have grades
	all c : Course | (all p : Person, g : Grade | p->g in c.grades implies p in Student)
}


pred inv11 {
	// Students only have grades in courses they are enrolled
	all c : Course | (all p : Person, g : Grade | p->g in c.grades implies c in p.enrolled)
}


pred inv12 {
	// Students have at most one grade per course
	all c : Course | (all p : Person | lone g : Grade | p->g in c.grades)
}


pred inv13 {
	// A student with the highest mark in a course must have worked on a project on that course
	
}


pred inv14 {
	// A student cannot work with the same student in different projects
	all s1 : Student, s2 : Student - s1 | lone (s1.projects & s2.projects)
}


pred inv15 {
	// Students working on the same project in a course cannot have marks differing by more than one unit
	
}
