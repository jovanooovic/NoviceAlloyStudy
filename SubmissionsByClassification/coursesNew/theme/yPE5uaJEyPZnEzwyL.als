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
  all p : Person | p.enrolled != none => p in Student

}


pred inv2 {
	// Only professors can teach courses
	all p : Person | p.teaches != none => p in Professor
}


pred inv3 {
	// Courses must have teachers
  all c : Course | (some p : Professor | c in p.teaches)

}
 

pred inv4 {
	// Projects are proposed by one course
	all p : Project | one c : Course | p in c.projects
}


pred inv5 {
	// Only students work on projects and 
	// projects must have someone working on them
  all x: Person - Student | no x.projects
  all p: Project | (some s: Student | p in s.projects)
  
}


pred inv6 {
	// Students only work on projects of courses they are enrolled in
  all s : Student | (s.projects in s.enrolled.projects)

}


pred inv7 {
	// Students work on at most one project per course
  all s : Student | all c : s.enrolled | #(s.projects & c.projects) <= 1

}


pred inv8 {
	
  all p : Professor | p.enrolled & p.teaches = none

}


pred inv9 {
	// A professor cannot teach colleagues
  all p : Professor | (all col : Professor - p | some (col.teaches & p.teaches) implies no (col.enrolled & p.teaches))

}


pred inv10 {
	// Only students have grades
	all c : Course |(all p : Person, g : Grade | p->g in c.grades => p in Student)
  
}


pred inv11 {
	// Students only have grades in courses they are enrolled
  all c : Course | (all p : Person, g : Grade | p->g in c.grades => c in p.enrolled)

} 


pred inv12 {
	// Students have at most one grade per course
  all c : Course | (all p : Person | lone g : Grade | p->g in c.grades)

}


pred inv13 { 
	
   

}
 

pred inv14 {
	// A student cannot work with the same student in different projects
  all s : Student | all c : Student - s | lone (s.projects & c.projects)  
  

}
 

pred inv15 {
	// Students working on the same project in a course cannot have marks differing by more than one unit
  
}
