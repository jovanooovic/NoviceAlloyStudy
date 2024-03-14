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


pred inv14 {
	// A student cannot work with the same student in different projects
	all s : Student | all s2 : Student-s | lone s.projects & s2.projects
  		
  	
}



pred inv10 {
	// Only students have grades
	all p : Person | all g : Grade | all c : Course | p->g in c.grades implies p in Student
}

pred inv1 {
	// Only students can be enrolled in courses
	all p : Person | some p.enrolled implies p in Student
}


pred inv2 {
	// Only professors can teach courses

}


pred inv3 {
	// Courses must have teachers

}


pred inv4 {
	// Projects are proposed by one course

}


pred inv5 {
	// Only students work on projects and 
	// projects must have someone working on them

}


pred inv6 {
	// Students only work on projects of courses they are enrolled in

}


pred inv7 {
	// Students work on at most one project per course

}


pred inv8 {
	// A professor cannot teach herself

}


pred inv9 {
	// A professor cannot teach colleagues

}




pred inv11 {
	// Students only have grades in courses they are enrolled

}


pred inv12 {
	// Students have at most one grade per course

}





pred inv15 {
	// Students working on the same project in a course cannot have marks differing by more than one unit

}
