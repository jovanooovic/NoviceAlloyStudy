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
	enrolled.Course in Student 
}


pred inv2 {
	// Only professors can teach courses
	teaches.Course in Professor
}


pred inv3 {
	// Courses must have teachers
	Professor.teaches = Course
}


pred inv4 {
	// Projects are proposed by one course
	all p : Project | one projects.p <: Course
}


pred inv5 {
	// Only students work on projects and 
	// projects must have someone working on them
  	all p : Project | some projects.p <: Person
	all p : Project | projects.p <: Person in Student
}


pred inv6 {
	// Students only work on projects of courses they are enrolled in
	all s : Student | s.projects in s.enrolled.projects
}


pred inv7 {
	// Students work on at most one project per course
	all s : Student, c : Course | lone s.projects & c.projects
}


pred inv8 {
	// A professor cannot teach herself
	
  	all p : Professor | no p.teaches & p.enrolled
}


pred inv9 {
	
	all p, p1 : Professor | some p.teaches & p1.teaches implies no p.teaches & p1.enrolled
}


pred inv10 {
	// Only students have grades
	Course.grades.Grade in Student 
}


pred inv11 {
	// Students only have grades in courses they are enrolled
	all s : Student, c : Course | s in (c.grades.Grade) implies c in s.enrolled
}


pred inv12 {
	// Students have at most one grade per course
	all c : Course | lone c.grades
}


pred inv13 {
	// A student with the highest mark in a course must have worked on a project on that course
	all c : Course | last[c.grades] in projects.(c.projects) <: Person
}


pred inv14 {
	// A student cannot work with the same student in different projects
	all disj s1, s2 : Student | some s1.projects & s2.projects implies one s1.projects & s2.projects
}


pred inv15 {
	// Students working on the same project in a course cannot have marks differing by more than one unit
	all disj s, s1 : Student, p : s.projects & s1.projects | 
  	one s.((projects.p <: Course).grades) and 
  	one s1.((projects.p <: Course).grades) implies
  	s.((projects.p <: Course).grades) = next[s1.((projects.p <: Course).grades)] or 
  	s.((projects.p <: Course).grades) = prev[s1.((projects.p <: Course).grades)] or 
  	s.((projects.p <: Course).grades) =      s1.((projects.p <: Course).grades)
  	
}
