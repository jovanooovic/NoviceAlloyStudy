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
	all p:Professor, pr:Project | p->pr not in projects and some s:Student | s->pr in projects
}


pred inv6 {
	// Students only work on projects of courses they are enrolled in
	all s:Student, p:Project | s->p in projects implies some c:Course | s->c in enrolled
}


pred inv7 {
	// Students work on at most one project per course
	all s:Student | some c:Course | s->c in enrolled implies lone p:Project | s->p in projects and c->p in projects
}


pred inv8 {
	
	all p:Professor, c:Course | p->c in teaches implies p->c not in enrolled
}


pred inv9 {
	// A professor cannot teach colleagues
	all p:Professor, c:Course | p->c in teaches implies all r:Professor | r->c not in enrolled
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
	all s1:Student,s2:Student, p1:Project | s1->p1 in projects and s2->p1 in projects implies all p2:Project | (s1->p2 in projects implies s2->p2 not in projects) and (s2->p2 in projects implies s1->p2 not in projects)
}


pred inv15 {
	// Students working on the same project in a course cannot have marks differing by more than one unit
	
}
