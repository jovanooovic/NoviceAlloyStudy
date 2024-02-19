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
	all p : Person - Student, c : Course | c not in p.enrolled
}


pred inv2 {
	// Only professors can teach courses
	all p : Person - Professor, c : Course | c not in p.teaches
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
  	all p : Person - Student, pr : Project | pr not in p.projects
	// projects must have someone working on them
  	all pr : Project | some s : Student | pr in s.projects
}


pred inv6 {
	// Students only work on projects of courses they are enrolled in
	all s : Student, p : Project | p in s.projects implies p in s.enrolled.projects
}


pred inv7 {
	// Students work on at most one project per course
	all s : Student, c : Course | lone p : Project | p in s.projects and p in c.projects
}


pred inv8 {
	// A professor cannot teach herself
	all p : Professor, c : Course | c in p.teaches implies c not in p.enrolled
}


pred inv9 {
	// A professor cannot teach colleagues
	all p1, p2 : Professor, c1, c2 : Course | c1 in p1.teaches and c1 in p2.teaches and p1 != p2 and c2 in p1.teaches implies c2 not in p2.enrolled
}


pred inv10 {
	// Only students have grades
	all p : Person - Student, c : Course, g : Grade | p->g not in c.grades
}


pred inv11 {
	// Students only have grades in courses they are enrolled
	all s : Student, c : Course, g : Grade | s->g in c.grades implies c in s.enrolled
}


pred inv12 {
	// Students have at most one grade per course
	all s : Student, c : Course | lone g : Grade | s->g in c.grades
}


pred inv13 {
	// A student with the highest mark in a course must have worked on a project on that course
	all s : Student, c : Course | s in c.grades.last implies some p : Project | p in s.projects and p in c.projects
}


pred inv14 {
	// A student cannot work with the same student in different projects
	all s1, s2 : Student , p1, p2 : Project | s1!=s2 and p1!=p2 and p1 in s1.projects and p1 in s2.projects and p2 in s1.projects implies p2 not in s2.projects
}


pred inv15 {
	// Students working on the same project in a course cannot have marks differing by more than one unit
	all s1, s2 : Student, p : Project, c : Course, g1, g2 : Grade | s1!=s2 and p in s1.projects and p in s2.projects and p in c.projects and s1->g1 in c.grades and s2->g2 in c.grades implies g1.prev = g2 or g2.prev = g1 or g1 = g2
}
