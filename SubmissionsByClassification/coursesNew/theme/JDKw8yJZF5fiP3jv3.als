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

}
//SECRET
pred inv1o {
	enrolled in Student -> Course
}
//SECRET
check inv1 {
	inv1 iff inv1o
} for 2

pred inv2 {
	// Only professors can teach courses

}
//SECRET
pred inv2o {
	teaches in Professor -> Course
}
//SECRET
check inv2 {
	inv1o implies
	(inv2 iff inv2o)
} for 2

pred inv3 {
	// Courses must have teachers

}
//SECRET
pred inv3o {
	teaches in Person some -> Course
}
//SECRET
check inv3 {
	inv1o and inv2o implies
	(inv3 iff inv3o)
} for 2

pred inv4 {
	// Projects are proposed by one course

}
//SECRET
pred inv4o {
	all p : Project | one (Course <: projects).p
}
//SECRET
check inv4 {
	inv1o and inv2o and inv3o implies
	(inv4 iff inv4o)
} for 2

pred inv5 {
	// Only students work on projects and 
	// projects must have someone working on them

}
//SECRET
pred inv5o {
	all p : Project | some (Person <: projects).p
	all p : Project | (Person <: projects).p in Student
}
//SECRET
check inv5 {
	inv1o and inv2o and inv3o and inv4o implies
	(inv5 iff inv5o)
} for 2

pred inv6 {
	// Students only work on projects of courses they are enrolled in

}
//SECRET
pred inv6o {
	all p : Person | p.projects in p.enrolled.projects
}
//SECRET
check inv6 {
	inv1o and inv2o and inv3o and inv4o and inv5o implies
	(inv6 iff inv6o)
} for 2

pred inv7 {
	// Students work on at most one project per course

}
//SECRET
pred inv7o {
	all p : Person, c : Course | lone p.projects & c.projects
}
//SECRET
check inv7 {
	inv1o and inv2o and inv3o and inv4o and inv5o and inv6o implies
	(inv7 iff inv7o)
} for 2

pred inv8 {
	// A professor cannot teach herself

}
//SECRET
pred inv8o {
	(all p : Person | no p.teaches & p.enrolled)
}
//SECRET
check inv8 {
	inv1o and inv2o and inv3o and inv4o and inv5o and inv6o and inv7o implies
	(inv8 iff inv8o)
} for 2

pred inv9 {
	// A professor cannot teach colleagues

}
//SECRET
pred inv9o {
	all p : Person | no (p.teaches.~teaches - p) & p.teaches.~enrolled
}
//SECRET
check inv9 {
	inv1o and inv2o and inv3o and inv4o and inv5o and inv6o and inv7o and inv8o implies
	(inv9 iff inv9o)
} for 3

pred inv10 {
	// Only students have grades

}
//SECRET
pred inv10o {
	Course.grades.Grade in Student
}
//SECRET
check inv10 {
	inv1o and inv2o and inv3o and inv4o and inv5o and inv6o and inv7o and inv8o and inv9o implies
	(inv10 iff inv10o)
} for 2

pred inv11 {
	// Students only have grades in courses they are enrolled

}
//SECRET
pred inv11o {
	all c : Course | c.grades.Grade in enrolled.c
}
//SECRET
check inv11 {
	inv1o and inv2o and inv3o and inv4o and inv5o and inv6o and inv7o and inv8o and inv9o and inv10o implies
	(inv11 iff inv11o)
} for 2

pred inv12 {
	// Students have at most one grade per course

}
//SECRET
pred inv12o {
	all p : Person, c : Course | lone p.(c.grades)
}
//SECRET
check inv12 {
	inv1o and inv2o and inv3o and inv4o and inv5o and inv6o and inv7o and inv8o and inv9o and inv10o and inv11o implies
	(inv12 iff inv12o)
} for 3

pred inv13 {
	// A student with the highest mark in a course must have worked on a project on that course

}
//SECRET
pred inv13o {
	all c : Course, p : Person | last in p.(c.grades) implies some p.projects & c.projects
}
//SECRET
check inv13 {
	inv1o and inv2o and inv3o and inv4o and inv5o and inv6o and inv7o and inv8o and inv9o and inv10o and inv11o and inv12o implies
	(inv13 iff inv13o)
} for 3

pred inv14 {
	// A student cannot work with the same student in different projects

}
//SECRET
pred inv14o {
	all p : Person, disj x,y : p.projects | no ((Person <: projects).x & projects.y) - p
}
//SECRET
check inv14 {
	inv1o and inv2o and inv3o and inv4o and inv5o and inv6o and inv7o and inv8o and inv9o and inv10o and inv11o and inv12o and inv13o implies	
	(inv14 iff inv14o)
} for 3

pred inv15 {
	// Students working on the same project in a course cannot have marks differing by more than one unit

}
//SECRET
pred inv15o {
	all c : Course, p : c.projects, disj x,y : (Person <: projects).p | some c.grades[x] and some c.grades[y] implies c.grades[x] in c.grades[y].(prev+iden+next)
}
//SECRET
check inv15 {
	inv1o and inv2o and inv3o and inv4o and inv5o and inv6o and inv7o and inv8o and inv9o and inv10o and inv11o and inv12o and inv13o and inv14o implies	
	(inv15 iff inv15o)
} for 3
