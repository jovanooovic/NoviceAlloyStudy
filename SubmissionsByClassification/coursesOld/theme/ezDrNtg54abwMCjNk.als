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
	all p:Person-Student, c:Course | c not in p.enrolled
}


pred inv2 {
	// Only professors can teach courses
	all p:Person-Professor, c:Course | c not in p.teaches
}


pred inv3 {
	// Courses must have teachers
	all c:Course | some p:Professor | c in p.teaches
}


pred inv4 {
	// Projects are proposed by one course
	all p:Project | one c:Course | p in c.projects
}


pred inv5 {
	// Only students work on projects and 
	// projects must have someone working on them
	all per:Person-Student, p:Project | p not in per.projects
  	all p:Project | some ps:Student | p in ps.projects
}


pred inv6 {
	// Students only work on projects of courses they are enrolled in
	all s:Student, p:Project | p in s.projects implies some c:Course | p in c.projects and c in s.enrolled
}


pred inv7 {
	// Students work on at most one project per course
	all s:Student, p1,p2:Project, c:Course | p1 in s.projects and p2 in s.projects and p1 in c.projects and p2 in c.projects implies p1=p2
}


pred inv8 {
	// A professor cannot teach herself
	all p:Professor, c:Course | c in p.teaches implies c not in p.enrolled
}


pred inv9 {
	// A professor cannot teach colleagues
	
}


pred inv10 {
	// Only students have grades
	all p:Person-Student, c:Course | p not in c.grades.Grade
}


pred inv11 {
	// Students only have grades in courses they are enrolled
	all p:Student, c:Course | p in c.grades.Grade implies c in p.enrolled
}


pred inv12 {
	// Students have at most one grade per course
	all p:Student, c:Course, g1,g2:Grade | p in c.grades.g1 and p in c.grades.g2 implies g1 = g2
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
