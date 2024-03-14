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
  
   no (Person-Student) & enrolled.Course
  

}


pred inv2 {
	// Only professors can teach courses
  no (Person-Professor) & teaches.Course

}


pred inv3 {
	// Courses must have teachers
	all  c:Course | some teaches.c

}


pred inv4 {
	// Projects are proposed by one course
  
    all p:Project | p in Course.projects
  	
    all c1,c2:Course, p:Project | p in c1.projects and p in c2.projects implies c1=c2
  
}


pred inv5 {
	// Only students work on projects and 
	// projects must have someone working on them
   no (Person-Student) & projects.Project
   all p:Project| some Person<:projects.p
  	

}


pred inv6 {
	// Students only work on projects of courses they are enrolled in

}


pred inv7 {
	// Students work on at most one project per course

}


pred inv8 {
	// A professor cannot teach herself

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
