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
  all x:Person-Student, y:Course | x->y not in enrolled
	// Only students can be enrolled in courses

}


pred inv2 {
  all x:Person-Professor, y:Course | x->y not in teaches
	// Only professors can teach courses

}


pred inv3 {
  all x:Course | some y:Professor | y->x in teaches
	// Courses must have teachers

}


pred inv4 {
  all x:Project | one y:Course | y->x in projects
	// Projects are proposed by one course

}


pred inv5 {
  all x:Person-Student, y:Project | x->y not in projects
  all x:Project | some y:Person | y->x in projects
	// Only students work on projects and 
	// projects must have someone working on them

}


pred inv6 {
 
	// Students only work on projects of courses they are enrolled in

}


pred inv7 {
  all x:Course, z:Student | lone(z.projects & x.projects)
	// Students work on at most one project per course

}


pred inv8 {
  
  all p:Professor | no (p.teaches & p.enrolled)
	// A professor cannot teach herself

}


pred inv9 {
  
	// A professor cannot teach colleagues

}


pred inv10 {
  all x:Person-Student, y:Course, z:Grade | y->x->z not in grades
	// Only students have grades

}


pred inv11 {
  all x:Student, y:Course, z:Grade | x->y not in enrolled implies y->x->z not in grades
	// Students only have grades in courses they are enrolled

}


pred inv12 {
  all x: Student, y:Course | lone z:Grade | y->x->z in grades
	// Students have at most one grade per course

}


pred inv13 {

	// A student with the highest mark in a course must have worked on a project on that course

}


pred inv14 {
    all x,y:Student, p:Project | (x->p in projects and y->p in projects and x!=y) implies (all p1:Project-p | x->p1 not in projects or y->p1 not in projects)
	// A student cannot work with the same student in different projects

}


pred inv15 {
	// Students working on the same project in a course cannot have marks differing by more than one unit

}
