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


pred inv2 {
	// Only professors can teach courses

}


pred inv3 {
	// Courses must have teachers

}


pred inv4 {
	// Projects are proposed by one course

}


pred inv5 {
	// Only students work on projects and 
	// projects must have someone working on them

}


pred inv6 {
	// Students only work on projects of courses they are enrolled in

}


pred inv7 {
	// Students work on at most one project per course

}


pred inv8 {
	// A professor cannot teach herself
  all p : Professor , c : Course | c in p.teaches implies c not in p.enrolled 

}


pred inv9 {
	// A professor cannot teach colleagues
  	
  all x : Professor | no (Professor-x).enrolled & x.teaches

}


pred inv10 {
	// Only students have grades
  	all p : Person | p in Course.grades.Grade implies p in Student

}


pred inv11 {
	// Students only have grades in courses they are enrolled
  all s: Student , c: Course | s in c.grades.Grade implies c in s.enrolled

}


pred inv12 {
	// Students have at most one grade per course
  	all s : Student, c : Course | c in s.enrolled implies  lone  ~(c.grades).s

}


pred inv13 {
	// A student with the highest mark in a course must have worked on a project on that course

}


pred inv14 {
	// A student cannot work with the same student in different projects
  	all s : Student , u : Student - s | lone( s.projects & u.projects )
  	

}


pred inv15 {
	// Students working on the same project in a course cannot have marks differing by more than one unit
	all p : Project, g,h : (projects.p).grades[Person<:projects.p] | g in (h + prev[h] + next[h])
}
