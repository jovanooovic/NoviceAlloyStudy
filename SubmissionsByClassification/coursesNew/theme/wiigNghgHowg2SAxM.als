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
  	all p : Person, c : Course | c in p.enrolled => p in Student

}


pred inv2 {
	// Only professors can teach courses
  	all p : Person | some p.teaches implies p in Professor
  	

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
  	all p : Person | some p.projects implies p in Student
  	all proj : Project | proj in Person.projects
   

}


pred inv6 {
	// Students only work on projects of courses they are enrolled in
	all s : Student, p : Project, c : Course | p in s.projects && p in c.projects implies c in s.enrolled
}


pred inv7 {
	// Students work on at most one project per course
  	all s : Student, c : Course, disj p1,p2 : Project | p1 in s.projects && p1 in c.projects && p2 in c.projects implies p2 not in s.projects

}


pred inv8 {
	// A professor cannot teach herself
  	all p : Professor, c : Course | c in p.teaches implies c not in p.enrolled

}


pred inv9 {
	// A professor cannot teach colleagues
  	all disj p1,p2 : Professor, c : Course | p1 in teaches.c implies c not in p2.enrolled

}


pred inv10 {
	// Only students have grades
  	all p : Person, g : Grade | g in Course.grades[p] implies p in Student

}


pred inv11 {
	// Students only have grades in courses they are enrolled
  	all s : Student, g : Grade, c : Course | g in c.grades[s] implies c in s.enrolled

}


pred inv12 {
	
  	all s : Student, c : Course | #c.grades[s] = 1
  	

}


pred inv13 {
	
  	

}


pred inv14 {
	// A student cannot work with the same student in different projects
  	all disj p1,p2 : Project, disj s1,s2 : Student | p1 in s1.projects && p1 in s2.projects && p2 in s1.projects implies p2 not in s2.projects
 
}


pred inv15 {
	// Students working on the same project in a course cannot have marks differing by more than one unit
  	

}
