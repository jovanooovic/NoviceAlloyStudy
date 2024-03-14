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
	Course in Professor.teaches
}


pred inv4 {
	// Projects are proposed by one course
  	all p : Project | one Course <: projects.p 
}


pred inv5 {
	// Only students work on projects and 
	// projects must have someone working on them
  
  	
	 Person <: projects.Project in Student
  	 all p : Project | some Person <: projects.p
}


pred inv6 {
	// Students only work on projects of courses they are enrolled in
	all s : Student | s.projects in s.enrolled.projects
}


pred inv7 {
	// Students work on at most one project per course
	all s : Student, c : s.enrolled | lone (c.projects & s.projects)
}


pred inv8 {
	// A professor cannot teach herself
	all p : Person | no (p.teaches & p.enrolled)
}


pred inv9 {
	// A professor cannot teach colleagues
	all p : Professor | no (enrolled.(p.teaches) & teaches.(p.teaches))
}


pred inv10 {
	// Only students have grades
	Course.grades.Grade in Student
}


pred inv11 {
	// Students only have grades in courses they are enrolled
	all c : Course, s : c.grades.Grade | c in s.enrolled  
}


pred inv12 {
	// Students have at most one grade per course
	all s : Student, c : Course | lone s.(c.grades) 	
}


pred inv13 {
	// A student with the highest mark in a course must have worked on a project on that course
  	all c : Course, s : c.grades.last | some s.projects & c.projects
}


pred inv14 {
	// A student cannot work with the same student in different projects
	all disj s1, s2 : Student | lone (s1.projects & s2.projects)
}


pred inv15 {
	// Students working on the same project in a course cannot have marks differing by more than one unit
  	all disj s1, s2 : Student, c : Course | some s1.projects & s2.projects & c.projects implies 
   (all g1 : s1.(c.grades), g2 : s2.(c.grades) | g1 in prev[g2] + next[g2] + g2)
}
