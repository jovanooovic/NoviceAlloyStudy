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
	all c: Course | enrolled.c in Student
}


pred inv2 {
	// Only professors can teach courses
	all c: Course | teaches.c in Professor
}


pred inv3 {
	
	all c: Course | some teaches.c 
}


pred inv4 {
	// Projects are proposed by one course
	all p: Project| one c:Course | c = projects.p
}


pred inv5 {
	// Only students work on projects and 
	// projects must have someone working on them
	all p1 : Project | some s: Student  | s->p1 in projects
  	all p2 : Project | all  p: Person   | p->p2 in projects => p in Student
}


pred inv6 {
	// Students only work on projects of courses they are enrolled in
  	all s:Student | all p: Project | some c: Course | s->p in projects => s in enrolled.c and c->p in projects
}


pred inv7 {
	// Students work on at most one project per course
	all s: Student  | all c: Course | s->c in enrolled => lone (s.projects & c.projects)
}


pred inv8 {
	// A professor cannot teach herself
  	all p: Professor | no (p.teaches & p.enrolled) 

}


pred inv9 {
	// A professor cannot teach colleagues
	all p: Professor | all c: Professor | some (p.teaches & c.teaches) => no (p.teaches & c.enrolled)  
}
 

pred inv10 {
	// Only students have grades
	all p:Person | all c: Course | all g: Grade | c->p->g in grades => p in Student

}
pred inv11 {
	// Students only have grades in courses they are enrolled
	all s:Student | all g: Grade | all c:Course | c->s->g in grades => s in enrolled.c
}


pred inv12 {
	// Students have at most one grade per course
	
  	all s:Student  | all c:Course | s in enrolled.c => lone g: Grade | c->s->g in grades
}


pred inv13 {
	// A student with the highest mark in a course must have worked on a project on that course
	all s: Student | all c:Course| s in c.grades.last => (some p: Project | p in s.projects and p in c.projects)
									
} 


pred inv14 {
	// A student cannot work with the same student in different projects
	all s1,s2: Student | all p1,p2: Project |
  	s1->p1 in projects and s2->p1 in projects and s1!=s2 and p1!=p2 => s1+s2 not in projects.p2
  	
}


pred inv15 {
	// Students working on the same project in a course cannot have marks differing by more than one unit
  	all s1,s2: Student | all p: Project | all c: Course | all g1,g2: Grade |
  	s1->p in projects and s2->p in projects and c->p in projects and c->s1->g1 in grades and c->s2->g2 in grades =>
  	g1 = g2 or g1 = prev[g2] or g2 = prev[g1] 

}



