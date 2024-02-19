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
	all c : Course | all p : Person-Student | no p & enrolled.c 

}


pred inv2 {
	// Only professors can teach courses
  	all c : Course | all p : Person-Professor | no p & teaches.c

}


pred inv3 {
	// Courses must have teachers
  	all c : Course | some teaches.c

}


pred inv4 {
	// Projects are proposed by one course
  	all p : Project | one c : Course |  p in c.projects

}


pred inv5 {
	// Only students work on projects and 
	// projects must have someone working on them
  	all p : Person | some p.projects implies p in Student
  	all p : Project | some s : Person | p in s.projects

}


pred inv6 {
	// Students only work on projects of courses they are enrolled in
  	all p : Project | all s : Person | p in s.projects implies some c : Course | p in c.projects and s in enrolled.c

}


pred inv7 {
	// Students work on at most one project per course
  	all s : Person | all c : Course | lone s.projects & c.projects

}


pred inv8 {
	// A professor cannot teach herself
	all t : Person | no t.teaches & t.enrolled
}


pred inv9 {
	// A professor cannot teach colleagues
  	all p1, p2: Professor | p1!= p2 and (some p1.teaches & p2.teaches) implies no p1.teaches & p2.enrolled

}


pred inv10 {
	// Only students have grades
  	all c : Course | all p : Person-Student| no p.(c.grades) 

}


pred inv11 {
	// Students only have grades in courses they are enrolled
  	all p : Student | all c : Course| some p.(c.grades) implies c in p.enrolled

}


pred inv12 {
	// Students have at most one grade per course
  	all p : Student | all c : Course | lone p.(c.grades)
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
