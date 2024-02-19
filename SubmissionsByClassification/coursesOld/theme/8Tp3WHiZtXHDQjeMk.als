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
	
	all p:Person, c:Course | p->c in enrolled implies p in Student
}


pred inv2 {
	
	all c:Course, p:Person | p->c in teaches implies p in Professor
}


pred inv3 {
	
	all c:Course | some p:Professor | p->c in teaches
}


pred inv4 {
	
	all p:Project | one c:Course | c->p in projects
}


pred inv5 {
	// Only students work on projects and 
	// projects must have someone working on them
	all p:Person, pr:Project | p->pr in projects implies p in Student
  	all pro:Project | some pe:Person | pe->pro in projects
}


pred inv6 {
	// Students only work on projects of courses they are enrolled in
	all s:Student, p:Project | s->p in projects implies some c:Course | s->c in enrolled and c->p in projects
}


pred inv7 {
	// Students work on at most one project per course
	all s:Student, c:Course | s->c in enrolled implies lone p:Project | s->p in projects and c->p in projects
}


pred inv8 {
	
	all p:Professor, c:Course | p->c in teaches implies p->c not in enrolled
}


pred inv9 {
	
	all p:Professor | all p2:Professor-p | p2 in p.teaches.~teaches implies all c:Course | p->c in teaches implies p2->c not in enrolled
}


pred inv10 {
	
	all p:Person | p not in Student implies all c:Course, g:Grade | c->p->g not in grades
}


pred inv11 {
	
	all s:Student, c:Course | s->c not in enrolled implies all g:Grade | c->s->g not in grades
}


pred inv12 {
	
	all s:Student, c:Course | lone g:Grade | c->s->g in grades
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
