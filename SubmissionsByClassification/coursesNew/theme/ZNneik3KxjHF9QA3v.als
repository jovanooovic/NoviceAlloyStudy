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
  all x: Person - Student | no x.enrolled

}


pred inv2 {
	// Only professors can teach courses
  all x: Person - Professor | no x.teaches

}


pred inv3 {
	// Courses must have teachers
   all c: Course | (some p : Professor | c in p.teaches  )

}


pred inv4 {
	// Projects are proposed by one course
  all p : Project | (one c : Course | p in c.projects)

}


pred inv5 {
	// Only students work on projects and 
	// projects must have someone working on them
  all x: Person - Student | no x.projects
  all p: Project | (some s: Student | p in s.projects)

}


pred inv6 {
	// Students only work on projects of courses they are enrolled in
  all u : Student | (all p: u.projects | (some c : Course | c in u.enrolled and p in c.projects ) )

}


pred inv7 {
	// Students work on at most one project per course
  all s: Student | (all c : s.enrolled | lone (c.projects &  s.projects)  ) 

}


pred inv8 {
	// A professor cannot teach herself
  	all p : Professor | (all c : p.teaches | c not in p.enrolled)

}


pred inv9 {
	// A professor cannot teach colleagues
  	all p : Professor | (all col : Professor - p | some (col.teaches & p.teaches) implies no (col.enrolled & p.teaches))

}


pred inv10 {
	// Only students have grades
  all c : Course | (all p : Person, g : Grade | p->g in c.grades implies p in Student)

}


pred inv11 {
	// Students only have grades in courses they are enrolled
  all c: Course | (all p: Person, g: Grade | p->g in c.grades implies c in p.enrolled)

}


pred inv12 {
	// Students have at most one grade per course
  all c: Course | (all p: Person| lone g: Grade | p->g in c.grades)
}


pred inv13 {
	// A student with the highest mark in a course must have worked on a project on that course

}


pred inv14 {
	// A student cannot work with the same student in different projects
  all x: Student | all col : Student - x | lone (x.projects & col.projects)
  

}


pred inv15 {
	// Students working on the same project in a course cannot have marks differing by more than one unit
  

}
