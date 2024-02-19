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
	all p:Person | not (no p.enrolled) implies p in Student 
}


pred inv2 {
	// Only professors can teach courses
  	all p:Person | not (no p.teaches) implies p in Professor

}


pred inv3 {
	// Courses must have teachers
  	all c :Course | #teaches.c>0

}


pred inv4 {
	// Projects are proposed by one course
  all p:Project| #Course:>projects.p=1

}


pred inv5 {
	// Only students work on projects and 
	// projects must have someone working on them
  	all p:Project | Person:>projects.p in Student and #Person:>projects.p>0

}


pred inv6 {
	// Students only work on projects of courses they are enrolled in
  	all s:Student| Course:>projects.(s.projects) in s.enrolled

}


pred inv7 {
	// Students work on at most one project per course
  	all s:Student,c:s.enrolled| #c.projects&s.projects<2

}


pred inv8 {
	// A professor cannot teach herself
  	all p:Professor | no p.enrolled&p.teaches  

}


pred inv9 {
	// A professor cannot teach colleagues
  	all p1,p2:Professor | (p1!=p2 and #p1.teaches&p2.teaches>0) implies (no p1.enrolled&p2.teaches)

}


pred inv10 {
	// Only students have grades
  	all c:Course | c.grades in Student->Grade

}


pred inv11 {
	// Students only have grades in courses they are enrolled
  	all c:Course | c.grades in enrolled.c->Grade 
 
}


pred inv12 {
	// Students have at most one grade per course
	all s:Student,c:s.enrolled | #c.grades&s->Grade<2 
}


pred inv13 {
	// A student with the highest mark in a course must have worked on a project on that course
	all s:Student|all c:Course | s in c.grades.last implies not (no s.projects&c.projects) 
}


pred inv14 {
	// A student cannot work with the same student in different projects
	all disj s1,s2:Student | #s1.projects&s2.projects<2
}


pred inv15 {
	// Students working on the same project in a course cannot have marks differing by more than one unit
	
}
