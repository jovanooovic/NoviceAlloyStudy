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
	teaches in Professor some -> set Course 
}

pred inv4 {
	// Projects are proposed by one course
	Course<:projects in Course one -> Project
}


pred inv5 {
	// Only students work on projects and 
	// projects must have someone working on them
  
	
  	
  	(Person<:projects).Project in Student
  	Person<:projects in Person some -> Project
  
}


pred inv6 {
	// Students only work on projects of courses they are enrolled in
	all s:Student, p:Project | s->p in Person<:projects => some c:s.enrolled | p in c.projects
}


pred inv7 {
	// Students work on at most one project per course
	all s:Student, c:Course | lone p:s.projects | p in c.projects
}


pred inv8 {
	// A professor cannot teach herself
	all t:Professor, c:t.teaches | c not in t.enrolled
}


pred inv9 {
	
	all t1,t2:Professor, c:t1.enrolled | t1 != t2 and c in t2.enrolled => 
  		not some c2:Course | (c2 in t1.enrolled and c2 in t2.teaches) or (c2 in t2.enrolled and c2 in t1.teaches)
}


pred inv10 {
	// Only students have grades
	all c:Course, p:Person, g:Grade | c->p->g in grades => p in Student
  	
}


pred inv11 {
	// Students only have grades in courses they are enrolled
	all c:Course, p:Person, g:Grade | c->p->g in grades => c in p.enrolled
}


pred inv12 {
	// Students have at most one grade per course
	
  	grades in Course -> Person -> lone Grade
}


pred inv13 {
	// A student with the highest mark in a course must have worked on a project on that course
	all s:Student, c:Course, g:Grade | c->s->g in grades and g in last => some p:c.projects | p in s.projects 
}


pred inv14 {
	// A student cannot work with the same student in different projects
	all p1, p2 : Project, s1, s2: Student | p1 != p2 and s1 != s2 => not (s1->p1 in projects and s1->p2 in projects and s2->p1 in projects and s2->p2 in projects)
}


pred inv15 {
	// Students working on the same project in a course cannot have marks differing by more than one unit
	all c:Course, p:c.projects, s1, s2: (Person<:projects).p, g1,g2:Grade | 
  		s1 != s2 and c->s1->g1 in grades and c->s2->g2 in grades => ((g1.prev = g2) or (g1=g2.prev) or (g1=g2))
}
