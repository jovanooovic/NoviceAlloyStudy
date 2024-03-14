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
	all p,c : univ | p in Person and c in Course and p->c in enrolled implies p in Student

}


pred inv2 {
	// Only professors can teach courses
	all p,c : univ | p in Person and c in Course and p->c in teaches implies p in Professor
}


pred inv3 {
	// Courses must have teachers
  	all c : Course | some p : Professor | p->c in teaches

}


pred inv4 {
	// Projects are proposed by one course
  	all p : Project | some c : Course | c->p in projects and Course <: projects in Course one -> set Project
}


pred inv5 {
	// Only students work on projects and
	// projects must have someone working on them
  	all p : Project | some s : Student | s->p in projects and all per : Person | per->p in projects implies per in Student

}


pred inv6 {
	// Students only work on projects of courses they are enrolled in
	all s,p : univ | s in Student and p in Project and s->p in Person <: projects implies some c : Course | s->c in enrolled and c->p in Course <: projects

}


pred inv7 {
	// Students work on at most one project per course
  	all s,p1,p2,c : univ | s in Student and p1 in Project and p2 in Project and c in Course and s->p1 in Person <: projects and s->p2 in Person <: projects and c->p1 in Course <: projects and c->p2 in Course <: projects implies p1=p2

}


pred inv8 {
	// A professor cannot teach herself
  	all p,c : univ | p in Professor and c in Course and p->c in teaches implies not p->c in enrolled

}


pred inv9 {
	// A professor cannot teach colleagues

}


pred inv10 {
	// Only students have grades
  	all p,c,g : univ | p in Person and c in Course and g in Grade and c->p->g in grades implies p in Student

}


pred inv11 {
	// Students only have grades in courses they are enrolled
  	all p,c,g : univ | p in Person and c in Course and g in Grade and c->p->g in grades implies p->c in enrolled

}


pred inv12 {
	// Students have at most one grade per course
  	all p,c,g1,g2 : univ | p in Person and c in Course and g1 in Grade and g2 in Grade and c->p->g1 in grades and c->p->g2 in grades implies g1=g2

}


pred inv13 {
	// A student with the highest mark in a course must have worked on a project on that course



}



pred inv14 {
	// A student cannot work with the same student in different projects
  	all disj s1,s2,p : univ | s1 in Student and s2 in Student and p in Project and s1->p in Person <: projects and s2->p in Person <: projects implies all p1 : Project | p1!=p and s1->p1 in Person <: projects implies not s2->p1 in Person <: projects
}


pred inv15 {
	// Students working on the same project in a course cannot have marks differing by more than one unit

}
