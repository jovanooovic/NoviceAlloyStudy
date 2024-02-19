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
	no (Person-Student).enrolled
}


pred inv2 {
	// Only professors can teach courses
	no (Person-Professor).teaches
}


pred inv3 {
	// Courses must have teachers
	Course in Person.teaches
}


pred inv4 {
	
  	all p: Project | one c: Course | p in c.projects
}


pred inv5 {
	// Only students work on projects and 
	// projects must have someone working on them
	(no (Person-Student).projects) and (Project in Person.projects)
}


pred inv6 {
	// Students only work on projects of courses they are enrolled in
  	all s: Student, c: Course | c not in s.enrolled => no (s.projects & c.projects)
}


pred inv7 {
	// Students work on at most one project per course
	all s: Student, c: s.enrolled | lone (s.projects & c.projects) 
}


pred inv8 {
	// A professor cannot teach herself
	all p: Professor | no (p.teaches & p.enrolled)
}


pred inv9 {
	// A professor cannot teach colleagues
	all p1: Professor, p2: Professor | p1 != p2 and some (p1.teaches & p2.teaches) => no (p1.teaches & p2.enrolled)
}


pred inv10 {
	// Only students have grades
  	no ((Person-Student) & Course.grades.Grade)
}


pred inv11 {
	// Students only have grades in courses they are enrolled
	
  	
  	all s: Student, c: Course | c not in s.enrolled => s not in c.grades.Grade
}


pred inv12 {
	// Students have at most one grade per course
	all s: Student, c: s.enrolled | lone g : Grade | s->g in c.grades
}


pred inv13 {
	// A student with the highest mark in a course must have worked on a project on that course
	all s: Student, c: Course | s in c.grades.last => some (c.projects & s.projects)
}


pred inv14 {
	// A student cannot work with the same student in different projects
	all s1, s2: Student | s1 != s2 => lone (s1.projects & s2.projects)
}


pred inv15 {
	// Students working on the same project in a course cannot have marks differing by more than one unit
	all s1, s2: Student, p: Project, c: Course, g1, g2: Grade | s1 != s2 and p in s1.projects and p in s2.projects and p in c.projects and g1 in s1.(c.grades) and g2 in s2.(c.grades) => g1 = prev[g2] or g2 = prev[g1] or g1 = g2
  									            
}
