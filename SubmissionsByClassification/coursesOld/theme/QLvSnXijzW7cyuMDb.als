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
  all s : Person | all c :  Course | s->c in enrolled implies s in Student

}


pred inv2 {
	// Only professors can teach courses
  all p : Person | all c : Course | p->c in teaches implies p in Professor

}


pred inv3 {
	// Courses must have teachers
  all c : Course | some p : Professor | p->c in teaches
}


pred inv4 {
	// Projects are proposed by one course
  all p : Project | one c : Course | c->p in projects
}


pred inv5 {
	// Only students work on projects and 
	// projects must have someone working on them
  all p : Project | some s : Student | s->p in projects
  all p1 : Project | all p2 : Person | p2->p1 in projects implies p2 in Student

}


pred inv6 {
	// Students only work on projects of courses they are enrolled in
    all s1 : Person | all p1 : Project | some c1 : Course | s1->p1 in projects implies (c1->p1 in projects and s1->c1 in enrolled)
}


pred inv7 {
	// Students work on at most one project per course
  all s1 : Student | all p1,p2 : Project | all c : Course | ((s1 -> p1 in projects) and (s1 -> p2 in projects) and 
  ( c -> p1 in projects ) and ( c -> p2 in projects )) implies ( p1 = p2)
}


pred inv8 {
	// A professor cannot teach herself
  all p1 : Professor | all c : Course | p1 -> c in teaches implies p1 -> c not in enrolled

}


pred inv9 {
	// A professor cannot teach colleagues
  
  all p1,p2 : Professor | all c1,c2 : Course | (p1!=p2 and p1->c1 in teaches and p2->c1 in teaches) implies 
  (p1->c2 in teaches implies p2->c2 not in enrolled)
}


pred inv10 {
	// Only students have grades
  all p : Person | all c : Course | all g : Grade | (c->p->g in grades) implies (p in Student)
}


pred inv11 {
	// Students only have grades in courses they are enrolled
  all s : Student | all c : Course| all g : Grade | (c->s->g in grades) implies (s->c in enrolled)
}


pred inv12 {
	// Students have at most one grade per course
  all s : Student | all c : Course| lone g : Grade | (c->s->g in grades) implies (s->c in enrolled)

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
