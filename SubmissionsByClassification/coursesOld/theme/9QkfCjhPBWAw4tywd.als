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
  	
  	
  
  	
  	all x : Course | some teaches.x

}


pred inv4 {
	// Projects are proposed by one course
  	
  	
  
  	
  	all x : Project | one projects.x <: Course
  	
  	
  	

}


pred inv5 {
	// Only students work on projects and 
	// projects must have someone working on them
	
  	
  	
  	
  	
  
  	all x : Project | (projects).x <: Person in Student
  	all x : Project | some (projects).x <: Person
}


pred inv6 {
	// Students only work on projects of courses they are enrolled in
  	
  	
	
	
  	all x : Student | no x.projects & (Course-x.enrolled).projects
}


pred inv7 {
	// Students work on at most one project per course
  	
  	
  
  	all y : Student, x : Course | lone y.projects & x.projects

}


pred inv8 {
	// A professor cannot teach herself
  	
  	
  	all x : Professor | no x.enrolled & x.teaches
  	

}


pred inv9 {
	// A professor cannot teach colleagues
	
  	
  	all x : Professor | no (Professor-x).enrolled & x.teaches 
  	
}


pred inv10 {
	// Only students have grades
  	no Course.grades & (Person-Student)->Grade

}


pred inv11 {
	// Students only have grades in courses they are enrolled
  	all x : Student | no x->Grade & (Course-x.enrolled).grades

}


pred inv12 {
	// Students have at most one grade per course
	all x : Student, y : Course | lone x->Grade & y.grades
}


pred inv13 {
	// A student with the highest mark in a course must have worked on a project on that course
  
  		
	
  	
  	
}


pred inv14 {
	// A student cannot work with the same student in different projects
  	all disj x, y : Student | lone x.projects & y.projects

}


pred inv15 {
	// Students working on the same project in a course cannot have marks differing by more than one unit
  	

}
