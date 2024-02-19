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
  all p:Person, c:Course | p in enrolled.c => p in Student

}


pred inv2 {
	// Only professors can teach courses
  all p:Person,c:Course | p in teaches.c => p in Professor

}


pred inv3 {
	// Courses must have teachers
  all c:Course| some teaches.c

}


pred inv4 {
	// Projects are proposed by one course
  all p:Project | one projects.p & Course

}


pred inv5 {
	// Only students work on projects and 
	// projects must have someone working on them
  all p:Project,c:Person| c in projects.p => c in Student
  all p:Project | some projects.p & Person

}


pred inv6 {
	// Students only work on projects of courses they are enrolled in

    all e:Student, p:Project | p in e.projects => p in e.enrolled.projects
}


pred inv7 {
	// Students work on at most one project per course
  all p:Student, c:Course | lone(p.projects & c.projects)

}


pred inv8 {
	// A professor cannot teach herself
  all t:Professor,c:Course | c in t.teaches => t not in enrolled.c

}


pred inv9 {
	// A professor cannot teach colleagues
  all p:Professor, col:Professor - p | some (col.teaches & p.teaches)=> no (col.enrolled & p.teaches) 

}


pred inv10 {
	// Only students have grades
  all c:Course,p:Person,g:Grade| p->g in c.grades => p in Student

}


pred inv11 {
	// Students only have grades in courses they are enrolled
  all c:Course,p:Person,g:Grade | p->g in c.grades => c in p.enrolled

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
