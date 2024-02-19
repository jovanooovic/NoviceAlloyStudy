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
	all c:Course| some teaches.c
}


pred inv4 {
	
	all p:Project| one c:Course| p in c.projects
}


pred inv5 {
	// Only students work on projects and 
	// projects must have someone working on them
	all p:Person | some p.projects implies p in Student 
  	all p:Project| some s:Student| p in s.projects
}


pred inv6 {
	// Students only work on projects of courses they are enrolled in
	all s:Student| s.projects in s.enrolled.projects
}


pred inv7 {
	// Students work on at most one project per course
	all s:Student| all c: s.enrolled| lone (s.projects&c.projects)
}


pred inv8 {
	
	all p:Professor| no p.enrolled & p.teaches
}


pred inv9 {
	// A professor cannot teach colleagues
	all p1,p2:Professor| some (p2.teaches&p1.teaches) and p1!=p2 implies (no (p2.enrolled & p1.teaches))
}


pred inv10 {
	// Only students have grades
	all c:Course| all p:Person,g: Grade| p->g in c.grades implies p in Student
}


pred inv11 {
	// Students only have grades in courses they are enrolled
	all s:Student,g: Grade,c:Course| s->g in c.grades implies c in s.enrolled
}


pred inv12 {
	// Students have at most one grade per course
	all s:Student,c:Course| lone (s->Grade & c.grades)
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
