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
  all c: Course | (some p: Professor | p in teaches.c)

}


pred inv4 {
	// Projects are proposed by one course
  all p: Project | (one c: Course | c in projects.p) 

}


pred inv5 {
	// Only students work on projects and 
	// projects must have someone working on them
  
  all p : Project | p.~(Person <: projects) in Student and some p.~(Person <: projects)
}


pred inv6 {
	// Students only work on projects of courses they are enrolled in
  all s: Student | s.projects in s.enrolled.projects
}


pred inv7 {
	// Students work on at most one project per course
  all s: Student, c:Course | s->c in enrolled implies (lone p: Project | p in c.projects&s.projects) 

}


pred inv8 {
	// A professor cannot teach herself
  all p: Person, c:Course | p->c in teaches implies p->c not in enrolled
  

}


pred inv9 {
	// A professor cannot teach colleagues
  
  
  

}


pred inv10 {
	// Only students have grades
  
  // Only professors can teach courses
  
  
  Grade.~(Course.grades) in Student
  

}


pred inv11 {
	// Students only have grades in courses they are enrolled
  all s: Student | (grades.Grade).s in s.enrolled

}


pred inv12 {
	// Students have at most one grade per course
  
  all s: Student, c:Course | s->c in enrolled implies (lone g: Grade | g in s.(c.grades)) 

}


pred inv13 {
	// A student with the highest mark in a course must have worked on a project on that course

}


pred inv14 {
	// A student cannot work with the same student in different projects
  all s,s1: Student, p,p1: Project | p!=p1 and s!=s1 and s->p in projects and s1->p in projects and s->p1 in projects implies s1->p1 not in projects

}


pred inv15 {
	// Students working on the same project in a course cannot have marks differing by more than one unit

}
