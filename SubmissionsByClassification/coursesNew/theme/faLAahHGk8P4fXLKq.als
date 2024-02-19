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
  all p1 : Person | all c1 : Course | c1 in p1.enrolled implies p1 in Student

}


pred inv2 {
	// Only professors can teach courses
  all p1 : Person | all c1 : Course | c1 in p1.teaches implies p1 in Professor

}


pred inv3 {
	// Courses must have teachers
  all c1 : Course | some p1 : Professor | c1 in p1.teaches

}


pred inv4 {
	// Projects are proposed by one course
  all ps : Project | one c1 : Course | ps in c1.projects

}


pred inv5 {
	// Only students work on projects and 
	// projects must have someone working on them
  all ps : Project | some p1 : Person | ps in p1.projects
  all ps : Project | all p1 : Person | ps in p1.projects implies p1 in Student

}


pred inv6 {
	// Students only work on projects of courses they are enrolled in
  all s1 : Person | all ps : Project | ps in s1.projects implies (some c1 : Course | ps in c1.projects and c1 in s1.enrolled)

}


pred inv7 {
	// Students work on at most one project per course
  all s1 : Person | all ps1,ps2 : Project | ps1 in s1.projects and ps2 in s1.projects and (some c1 : Course | ps1 in c1.projects and ps2 in c1.projects) implies ps1 = ps2

}


pred inv8 {
	// A professor cannot teach herself
  all s1 : Person | all c1 : Course | c1 in s1.teaches implies c1 not in s1.enrolled

}


pred inv9 {
	// A professor cannot teach colleagues
	all s1,s2 : Professor | some c1 : Course | c1 in s1.teaches and c1 in s2.teaches implies (all c2 : Course | c2 in s1.teaches implies c2 not in s2.enrolled)
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
