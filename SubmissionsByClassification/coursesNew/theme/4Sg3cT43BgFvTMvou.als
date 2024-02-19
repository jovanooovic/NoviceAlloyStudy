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
	all p : Person | all c : Course | p in enrolled.c implies p in Student
}


pred inv2 {
	// Only professors can teach courses
	all p : Person - Professor | all c : Course | p not in teaches.c 
}


pred inv3 {
	// Courses must have teachers
  	all c : Course | some teaches.c

}


pred inv4 {
	// Projects are proposed by one course
  	all p : Project | one c : Course | c in projects.p

}


pred inv5 {
	// Only students work on projects and 
	// projects must have someone working on them
  	all person : Person | all project : Project | project in person.projects implies person in Student
  	some person : Person | all project : Project | person in projects.person 

}


pred inv6 {
	// Students only work on projects of courses they are enrolled in
	all s : Student | all p : Project | p in s.projects implies s in enrolled.projects.p  
}


pred inv7 {
	// Students work on at most one project per course
  	all s : Person | all p1, p2 : Project | all c : Course | s in projects.p1 and s in projects.p2 and c in projects.p1 and c in projects.p2 implies p1 = p2
}


pred inv8 {
	// A professor cannot teach herself
  	all p : Professor | all c : Course | c in p.teaches implies c not in p.enrolled
  	

}


pred inv9 {
	// A professor cannot teach colleagues
  	all p1,p2 : Professor | p1 != p2 and (some p1.teaches & p2.teaches) implies (no p1.enrolled & p2.teaches )

}


pred inv10 {
	// Only students have grades
  	all p : Person, c : Course | some p.(c.grades) implies p in Student

}


pred inv11 {
	// Students only have grades in courses they are enrolled
  	all p : Person, c : Course | some p.(c.grades) implies c in p.enrolled

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
