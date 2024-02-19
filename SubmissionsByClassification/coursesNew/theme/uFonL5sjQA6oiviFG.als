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
  all x : Person | all y : Course | x in enrolled.y implies x in Student

}


pred inv2 {
	// Only professors can teach courses
  all x : Person | all y : Course | x in teaches.y implies x in Professor

}


pred inv3 {
	// Courses must have teachers
  all x : Course | some y : Person | y in teaches.x

}


pred inv4 {
	// Projects are proposed by one course
  all x : Project | one y : Course | y in projects.x 

}


pred inv5 {
	// Only students work on projects and 
	// projects must have someone working on them
  all x : Project | all y : Person | x in y.projects implies y in Student
  all x : Project | some y : Person | x in y.projects

}


pred inv6 {
	// Students only work on projects of courses they are enrolled in
  all x : Person | all y : Project | x in projects.y implies 
  			(one z : Course | x in enrolled.z 
  				and 
  			y in z.projects)  

}


pred inv7 {
	// Students work on at most one project per course
  all x : Student | all y : Course | x in enrolled.y implies 
  	( lone z : Project | x in projects.z and y in projects.z )

}


pred inv8 {
	// A professor cannot teach herself
  all x : Professor | all y : Course | x in teaches.y implies x not in enrolled.y

}


pred inv9 {
	// A professor cannot teach colleagues
  all p1,p2 : Professor | (some p1.teaches & p2.teaches) implies 
	(no p1.enrolled & p2.teaches )
  

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
