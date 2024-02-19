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
	all p : Project | one c : Course | c in projects.p
}


pred inv5 {
	// Only students work on projects and 
	// projects must have someone working on them
	all p : Project | (Person<:projects.p) in Student and some (Person<:projects.p)
}


pred inv6 {
	// Students only work on projects of courses they are enrolled in
	all s:Student, p:Project, c:Course | p in s.projects and p in c.projects implies c in s.enrolled
}


pred inv7 {
	// Students work on at most one project per course
	all s:Student, c:Course, p1,p2:Project | c in s.enrolled and p1 in c.projects and p2 in c.projects and p1 in s.projects and p2 in s.projects implies p1 = p2
}


pred inv8 {
	// A professor cannot teach herself
	all p : Professor, c:Course | c in p.teaches implies p not in enrolled.c
}


pred inv9 {
	// A professor cannot teach colleagues
  	all c : Course, p:Professor | c in p.teaches implies enrolled.c-p not in Professor
  
}


pred inv10 {
	// Only students have grades
	all c : Course | c.grades.Grade in Student 
}


pred inv11 {
	// Students only have grades in courses they are enrolled
	all c : Course, p:Person | p in c.grades.Grade implies p in enrolled.c
}


pred inv12 {
	// Students have at most one grade per course
	all c:Course, s:enrolled.c, g1,g2:Grade | g1 in s.(c.grades) and g2 in s.(c.grades) implies g1=g2
}


pred inv13 {
	// A student with the highest mark in a course must have worked on a project on that course
	all c : Course, s : c.grades.last | some p : c.projects | p in s.projects
}


pred inv14 {
	// A student cannot work with the same student in different projects
	all s1:Student , s2:Student-s1, p1:Project, p2:Project-p1 | p1 in s1.projects and p1 in s2.projects and p2 in s1.projects implies p2 not in s2.projects
}



pred inv15 {
	// Students working on the same project in a course cannot have marks differing by more than one unit

}
