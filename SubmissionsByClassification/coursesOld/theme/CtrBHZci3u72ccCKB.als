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
	enrolled in Student -> Course
}


pred inv2 {
	// Only professors can teach courses
	teaches in Professor -> Course
}


pred inv3 {
	// Courses must have teachers
	teaches in Person some -> Course
}


pred inv4 {
	// Projects are proposed by one course
	Course <: projects in Course one -> Project

}


pred inv5 {
	// Only students work on projects and 
	// projects must have someone working on them

  	all p:Project | Person <: projects.p in Student and some Person <: projects.p
}


pred inv6 {
	// Students only work on projects of courses they are enrolled in


  Person<:projects in enrolled.projects
}


pred inv7 {
	// Students work on at most one project per course

  	all c:Course,p:Person | lone p.projects & c.projects 
}


pred inv8 {
	// A professor cannot teach herself


  all p:Person | no p.teaches & p.enrolled
}


pred inv9 {
	// A professor cannot teach colleagues

  	no teaches.~enrolled & teaches.~teaches
}


pred inv10 {
	// Only students have grades

  	Course.grades in Student->Grade
}


pred inv11 {
	// Students only have grades in courses they are enrolled

  all c:Course | c.(grades.Grade) in enrolled.c
}


pred inv12 {
	// Students have at most one grade per course

  	all c:Course,s:Student | lone s.(c.grades)
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
