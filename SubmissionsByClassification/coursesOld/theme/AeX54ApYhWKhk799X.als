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
	all p:Person, c:Course | p->c in enrolled implies p in Student
}


pred inv2 {
	// Only professors can teach courses
	all p:Person , c:Course | p->c in teaches implies p in Professor
}


pred inv3 {
	// Courses must have teachers
	all c:Course| some p:Professor | p->c in teaches 
}


pred inv4 {
	// Projects are proposed by one course
	all p:Project | one c:Course | c->p in projects 
}


pred inv5 {
	// Only students work on projects and 
	// projects must have someone working on them
	all p:Person | all po:Project | p->po in projects implies p in Student
    all pr:Project | some s:Student | s->pr in projects 
  
}


pred inv6 {
	// Students only work on projects of courses they are enrolled in
	all s:Student , p:Project | s->p in projects implies(some c:Course| s->c in enrolled and c->p in projects) 
}


pred inv7 {
	// Students work on at most one project per course
	all x : Student, y : Course, z, w : Project | x->z in projects and x->w in projects and y->z in projects and y->w in projects implies w = z
}


pred inv8 {
	// A professor cannot teach herself
	all p1:Professor, z:Student | all c:Course | p1->c in teaches and z->c in enrolled implies p1 != z
}


pred inv9 {
	// A professor cannot teach colleagues
	all p1,p2:Professor, c1,c2:Course| p1->c1 in teaches and p2->c2 in enrolled and p1 != p2 implies c1 != c2      
}


pred inv10 {
	// Only students have grades
	no Course.grades & (Person-Student)->Grade
}


pred inv11 {
	// Students only have grades in courses they are enrolled
    all s : Student | no s->Grade & (Course-s.enrolled).grades
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
