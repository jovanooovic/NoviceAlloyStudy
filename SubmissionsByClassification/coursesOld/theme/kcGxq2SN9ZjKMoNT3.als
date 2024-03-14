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
  	no (Person-Student).enrolled
}



pred inv2 {
	// Only professors can teach courses
  	no (Person-Professor).teaches

}


pred inv3 {
	// Courses must have teachers
  	Professor.teaches = Course
  	
}


pred inv4 {
	// Projects are proposed by one course
  
  	
	all c1,c2: Course, p: Project | p in c1.projects and p in c2.projects implies c1=c2
  	
  	Project in Course.projects
}


pred inv5 {
	// Only students work on projects and 
	
  	Person.projects - (Person - Student).projects = Project 
}


pred inv6 {
	// Students only work on projects of courses they are enrolled in
  	all s: Student | s.projects in s.enrolled.projects 
}


pred inv7 {
	// Students work on at most one project per course
  	all s : Student, c : Course | lone ((s.projects) & (c.projects))
}


pred inv8 {
	// A professor cannot teach herself
  	all p: Professor, c: Course | c in p.teaches implies c not in p.enrolled
}


pred inv9 {
	// A professor cannot teach colleagues
    
  	no(teaches & (Professor <: enrolled).~teaches.teaches)
	  
}
 

pred inv10 {
	// Only students have grades
  	all c: Course | c.grades.Grade in Student

}


pred inv11 {
	// Students only have grades in courses they are enrolled
  	all c: Course, s: Student | s in c.grades.Grade implies c in s.enrolled

}


pred inv12 {
	// Students have at most one grade per course
  	all s : Student, c : Course | lone (s.(c.grades))

}


pred inv13 {
	// A student with the highest mark in a course must have worked on a project on that course
	grades.(max[Grade]) in projects.~projects
  
}


pred inv14 {
	// A student cannot work with the same student in different projects
  	all s1: Student, s2: Student - s1 | lone (s1.projects & s2.projects)

}


pred inv15 {
	
  	all p : Project, g,h : (projects.p).grades[projects.p] | g in (h + prev[h] + next[h])
}
