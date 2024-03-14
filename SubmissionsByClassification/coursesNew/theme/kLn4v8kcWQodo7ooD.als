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
	all p:Person | all c:Course | c in p.enrolled implies p in Student  
}


pred inv2 {
	// Only professors can teach courses
	all p:Person |all c:Course | c in p.teaches implies p in Professor
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
	all per:Person | all po:Project | po in per.projects implies per in Student
    all pro:Project | some p:Person | pro in p.projects
}


pred inv6 {
	// Students only work on projects of courses they are enrolled in
	all s:Student | all p:Project | p in s.projects implies p in s.enrolled.projects
}


pred inv7 {
	// Students work on at most one project per course
	all x : Student, y : Course, z, w : Project | x->z in projects and x->w in projects and y->z in projects and y->w in projects implies w = z
}


pred inv8 {
	// A professor cannot teach herself
	all p1:Professor | all c:Course | c in p1.teaches implies c not in  p1.enrolled
}


pred inv9 {
	// A professor cannot teach colleagues
	all p,p1:Person|  all c1:Course | c1 in p1.teaches and c1 in p.enrolled implies p not in Professor and p1 in Professor   
}


pred inv10 {
	// Only students have grades

}


pred inv11 {
	// Students only have grades in courses they are enrolled

}


pred inv12 {
	// Students have at most one grade per course

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
