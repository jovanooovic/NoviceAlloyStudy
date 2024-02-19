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
  	Course in Professor.teaches

}


pred inv4 {
	// Projects are proposed by one course
  	all p : Project | one c : Course | p in c.projects

}


pred inv5 {
	// Only students work on projects and 
	// projects must have someone working on them
  	no (Person-Student).projects
  	Project in Student.projects
  	

}


pred inv6 {
	// Students only work on projects of courses they are enrolled in
    all p : Project, s : Student | p in s.projects => p in s.enrolled.projects

}


pred inv7 {
	// Students work on at most one project per course
	all c: Course, s : Student | lone ((c.projects) & (s.projects)) 
}


pred inv8 {
	// A professor cannot teach herself
  	no (teaches & enrolled)

}


pred inv9 {
	// A professor cannot teach colleagues
  	no (teaches & (Professor <: enrolled).~teaches.teaches)
	
}


pred inv10 {
	// Only students have grades
	Course.grades.Grade in Student
}


pred inv11 {
	// Students only have grades in courses they are enrolled
  	~(grades.Grade) in enrolled

}


pred inv12 {
	// Students have at most one grade per course
	all s : Student, c : Course | lone g : Grade | s->g in c.grades
}


pred inv13 {
	// A student with the highest mark in a course must have worked on a project on that course
  	grades.(max[Grade]) in projects.~projects

}


pred inv14 {
	// A student cannot work with the same student in different projects
	all s : Student, t : Student - s | lone (s.projects & t.projects)
}


pred inv15 {
	// Students working on the same project in a course cannot have marks differing by more than one unit
	all p : Project, g,h : (projects.p).grades[projects.p] | g in (h + prev[h] + next[h])
}
