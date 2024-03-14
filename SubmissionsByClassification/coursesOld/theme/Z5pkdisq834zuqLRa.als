open util/ordering[Grade]

sig Person {
	teaches : set Course,
	enrolled : set Course,
	projects : set Project
}

sig Professor,Student in Person{}

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
  	no (Person-Student).enrolled
}


pred inv2 {
	// Only professors can teach courses
    no (Person-Professor).teaches
}


pred inv3 {
	// Courses must have teachers
	Course in Professor.teaches
}


pred inv4 {
	// Projects are proposed by one course
	all p : Project | one (Course<:projects).p
}


pred inv5 {
	// Only students work on projects and 
	// projects must have someone working on them
  	no (Person-Student).projects && Project in Student.projects
}


pred inv6 {
	// Students only work on projects of courses they are enrolled in
	all s : Student | s.projects in s.enrolled.projects
}


pred inv7 {
	// Students work on at most one project per course
	all s : Student, c : s.enrolled | lone c.projects&s.projects
}


pred inv8 {
	// A professor cannot teach herself
	all p : Professor | no p.teaches&p.enrolled
}


pred inv9 {
	// A professor cannot teach colleagues
  	all c : Course, p : teaches.c | p.enrolled&(teaches.c).teaches=none
}


pred inv10 {
	// Only students have grades
  	all p : Person-Student | p not in Course.grades.Grade
}


pred inv11 {
	// Students only have grades in courses they are enrolled
  	all p : Student | p not in (Course-(p.enrolled)).grades.Grade
}


pred inv12 {
	// Students have at most one grade per course
	all p : Student, c : p.enrolled | lone p.(c.grades)
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
