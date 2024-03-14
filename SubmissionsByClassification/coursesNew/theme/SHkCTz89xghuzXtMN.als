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
	all p : Person, c : Course | p in enrolled.c implies p in Student
}


pred inv2 {
	// Only professors can teach courses
	all p : Person, c : Course | p in teaches.c implies p in Professor
}


pred inv3 {
	// Courses must have teachers
	all c : Course | some p : Person | p in teaches.c and p in Professor
}


pred inv4 {
	// Projects are proposed by one course
	all p : Project | one c : Course | p in c.projects
}

 
pred inv5 {
	// Only students work on projects and 
	// projects must have someone working on them
	all p : Project, s : Person | s in projects.p implies s in Student 
  	all p : Project | some s : Student | s in projects.p
}


pred inv6 {
	// Students only work on projects of courses they are enrolled in
	all s : Student | ( all p : s.projects | (some c : Course | c in projects.p and s in enrolled.c) )
}

pred inv7 {
	// Students work on at most one project per course
	all s : Student | all p,p1 : s.projects | all c : s.enrolled | p in c.projects and p1 in c.projects implies p = p1
}


pred inv8 {
	// A professor cannot teach herself
	all p : Professor | all c : p.teaches | p not in enrolled.c
}


pred inv9 {
	
	all p : Professor | (all col : Professor - p |  some (col.teaches & p.teaches) implies no (col.enrolled & p.teaches))

}


pred inv10 {
	// Only students have grades
  all c : Course | ( all g : Grade, p : Person | p->g in c.grades implies p in Student )

}

pred inv11 {
	// Students only have grades in courses they are enrolled
  	all c : Course | ( all g : Grade , p : Person | p->g in c.grades implies p in enrolled.c )
}


pred inv12 {
	// Students have at most one grade per course
  all c : Course, p : Person | ( all g1,g2 : Grade | p->g1 in c.grades and p->g2 in c.grades implies g1 = g2 )
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
