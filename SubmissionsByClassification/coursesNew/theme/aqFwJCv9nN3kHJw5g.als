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
    all p:Person | all c:Course | p->c in enrolled implies p in Student
}


pred inv2 {
	// Only professors can teach courses
	all p:Person | all c:Course | p->c in teaches implies p in Professor
}


pred inv3 {
	// Courses must have teachers
	all c:Course | some p:Professor | p->c in teaches
}


pred inv4 {
	// Projects are proposed by one course
	all p:Project | one c:Course | c->p in projects
}


pred inv5 {
	// Only students work on projects and 
	// projects must have someone working on them
	all p:Person | all pr:Project | p->pr in projects implies p in Student
  all pr:Project | some s:Student | s->pr in projects  
}


pred inv6 {
	// Students only work on projects of courses they are enrolled in
	all s1:Student | all pr:Project | s1->pr in projects implies ( some c:Course | s1->c in enrolled and c->pr in projects )
}


pred inv7 {
	// Students work on at most one project per course
	all s:Student | all c1:Course | all z,w:Project | s->z in projects and s ->w in projects and c1->z in projects and c1->w in projects implies z=w
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
	all s:Student | no s->Grade & (Course-s.enrolled).grades
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
