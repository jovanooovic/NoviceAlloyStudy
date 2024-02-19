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
  all p : Person, c : Course | p -> c in enrolled implies p in Student  

}


pred inv2 {
	// Only professors can teach courses
  all p : Person, c : Course | p -> c in teaches implies p in Professor

}


pred inv3 {
	// Courses must have teachers
  all c : Course | some p : Professor | p -> c in teaches

}


pred inv4 {
	// Projects are proposed by one course
	all p : Project | one c : Course | c -> p in projects
}


pred inv5 {
	// Only students work on projects and 
	// projects must have someone working on them
	(all p: Person, pr : Project | p -> pr in projects implies p in Student) and (all pr1 : Project | some s : Student | s -> pr1 in projects)
} 


pred inv6 {
	// Students only work on projects of courses they are enrolled in
  all s: Student, p: Project | s -> p in projects implies some c: Course | s -> c in enrolled and c -> p in projects 

}


pred inv7 {
	// Students work on at most one project per course
  all c : Course, s : Student | s -> c in enrolled implies lone p : Project | s -> p in projects and c -> p in projects 

}


pred inv8 {
	// A professor cannot teach herself
  all p : Professor, c : Course | p -> c in teaches implies p -> c not in enrolled

}


pred inv9 {
	// A professor cannot teach colleagues
	all c1, c2 : Course, p1, p2 : Professor | p1 -> c1 in teaches and p2 -> c1 in teaches and p2 -> c2 in enrolled implies p1 -> c2 not in teaches
}


pred inv10 {
	// Only students have grades
  all p : Person, c : Course, g : Grade |  c -> p -> g in grades implies p in Student 

}


pred inv11 {
	// Students only have grades in courses they are enrolled
	all s: Student, c: Course, g: Grade | c -> s -> g in grades implies s -> c in enrolled
}


pred inv12 {
	// Students have at most one grade per course
	all s: Student, c: Course | s -> c in enrolled implies lone g: Grade | c->s->g in grades
}


pred inv13 {
	// A student with the highest mark in a course must have worked on a project on that course
	all s : Student, c : Course | c -> s in grades.last implies (some p : Project | c -> p in projects and s -> p in projects)
}


pred inv14 {
	// A student cannot work with the same student in different projects
	all s1,s2 : Student | all p1,p2 : Project | (s1->p1 in projects and s2->p1 in projects and s1!=s2 and p1!=p2) implies ( (s1->p2 not in projects) or (s2->p2 not in projects) )
}


pred inv15 {
	// Students working on the same project in a course cannot have marks differing by more than one unit

}
