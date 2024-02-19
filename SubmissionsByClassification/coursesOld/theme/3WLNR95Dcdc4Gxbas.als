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
	enrolled.Course in Student
}


pred inv2 {
	// Only professors can teach courses
	teaches.Course in Professor
}


pred inv3 {
	// Courses must have teachers
	Course in Person.teaches
}


pred inv4 {
	// Projects are proposed by one course
	Course<:projects in Course one -> set Project
}






pred inv5 {
	// Only students work on projects and 
	// projects must have someone working on them
	Person<:projects.Project in Student
  
	Project in Person.(Person<:projects)
}


pred inv6 {
	// Students only work on projects of courses they are enrolled in
	all s: Student | all p: Project | s->p in projects => (some c: Course | s->c in enrolled and c->p in projects)
}


pred inv7 {
	// Students work on at most one project per course
	all s: Student | all c: Course | all p1, p2 : Project | s->p1 in projects and s->p2 in projects and c->p1 in projects and c->p2 in projects => p1 = p2
}


pred inv8 {
	// A professor cannot teach herself
	all p : Professor, c: Course | c in p.teaches => c not in p.enrolled
}


pred inv9 {
	// A professor cannot teach colleagues
	all p1, p2: Professor, c: Course | not(p1->c in enrolled and p2->c in teaches)
}


pred inv10 {
	// Only students have grades
	all c: Course, p:Person, g:Grade | c->p->g in grades => p in Student
}


pred inv11 {
	// Students only have grades in courses they are enrolled
	all c: Course, p:Person, g:Grade | c->p->g in grades => p->c in enrolled
}


pred inv12 {
	// Students have at most one grade per course
	all c: Course, p:Person, g1, g2:Grade | c->p->g1 in grades and c->p->g2 in grades => g1 = g2
	
}


pred inv13 {
	// A student with the highest mark in a course must have worked on a project on that course
	
  	all s:Student, c:Course, g:Grade | c->s->g in grades and g in last => some p:c.projects | s->p in projects
  
	
}


pred inv14 {
	// A student cannot work with the same student in different projects
	all p1, p2 : Project | all s1, s2: Student | p1 != p2 and s1 != s2 => not (s1->p1 in projects and s1->p2 in projects and s2->p1 in projects and s2->p2 in projects)
}


pred inv15 {
	// Students working on the same project in a course cannot have marks differing by more than one unit
	all p : Project | all s1, s2 : Student | s1->p in projects and s2->p in projects and s1 != s2 => 
  	( all g1, g2: Grade, c : Course | c->s1->g1 in grades and c->s2->g2 in grades => (g1 = g2 or g1 = prev[g2] or g2 = prev[g1]) )
}
