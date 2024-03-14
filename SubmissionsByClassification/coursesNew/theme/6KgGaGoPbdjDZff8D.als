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
  	all p : Person | p not in Student implies #(p.enrolled)=0

}


pred inv2 {
	// Only professors can teach courses
	all p : Person | p not in Professor implies #(p.teaches)=0 
}


pred inv3 {
	// Courses must have teachers
  	all c : Course | some p : Person | c in p.teaches

}


pred inv4 {
	
	all p : Project | one c : Course | p in c.projects 

}


pred inv5 {
	// Only students work on projects and 
	// projects must have someone working on them
  	all p : Person | #(p.projects)>0 implies p in Student
  	all proj : Project | some p : Person | proj in p.projects

}


pred inv6 {
	// Students only work on projects of courses they are enrolled in
  	all s : Student | all c : Course | all proj : Project | (proj in s.projects and proj in c.projects) implies c in s.enrolled
  
  

}


pred inv7 {
	// Students work on at most one project per course
  	
  	
	all s : Student | all c : Course | all proj1 : Project | all proj2 : Project | (proj1 in s.projects and proj2 in s.projects and proj1 in c.projects and proj1 != proj2) implies proj2 not in c.projects
  
}


pred inv8 {
	// A professor cannot teach herself
	all p : Person | all c : Course | c in p.teaches implies c not in p.enrolled
  	
}


pred inv9 {
	// A professor cannot teach colleagues
  	

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
