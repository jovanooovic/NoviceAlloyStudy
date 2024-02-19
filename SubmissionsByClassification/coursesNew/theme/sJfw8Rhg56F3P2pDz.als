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
  	all p : Person, c : Course | c in p.enrolled implies p in Student 

}


pred inv2 {
	// Only professors can teach courses
	all p : Person, c : Course | c in p.teaches implies p in Professor
}


pred inv3 {
	// Courses must have teachers
	all c : Course | some p : Professor | c in p.teaches
}


pred inv4 {
	// Projects are proposed by one course
	all p : Project | one c : Course | p in c.projects
}


pred inv5 {
	// Only students work on projects and 
	// projects must have someone working on them
  	all p : Person, ps : Project | ps in p.projects implies p in Student
  	all p : Project | some person : Person | p in person.projects
}


pred inv6 {
	// Students only work on projects of courses they are enrolled in
  	all p : Person, ps : Project | ps in p.projects implies p in Student && ps in p.enrolled.projects

}


pred inv7 {
	// Students work on at most one project per course
  	all p : Person, c : Course , ps1,ps2 : Project | ps1 in p.projects && ps2 in p.projects && ps1 in c.projects && ps2 in c.projects implies ps1 = ps2
}


pred inv8 {
	// A professor cannot teach herself
	all p : Person, c : Course | p in Professor && c in p.teaches implies c not in p.enrolled
}


pred inv9 {
	// A professor cannot teach colleagues
  	all p1,p2 : Professor | p1 != p2 && (some p1.teaches & p2.teaches) implies (no p1.enrolled & p2.teaches) 
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
  	all p : Person, c : Course | lone p.(c.grades)  

}


pred inv13 {
	// A student with the highest mark in a course must have worked on a project on that course
  	all s : Student, c : Course | s.(c.grades) = last implies some (s.projects & c.projects) 
  	

}


pred inv14 {
	// A student cannot work with the same student in different projects

}


pred inv15 {
	// Students working on the same project in a course cannot have marks differing by more than one unit

}
