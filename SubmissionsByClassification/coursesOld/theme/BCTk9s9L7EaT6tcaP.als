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
  all p: Person, c: Course | p in enrolled.c implies p in Student

}


pred inv2 {
	// Only professors can teach courses
  all p: Person, c: Course | p in teaches.c implies p in Professor

}


pred inv3 {
	// Courses must have teachers
  all c: Course | some teaches.c

}


pred inv4 {
	// Projects are proposed by one course
  all p: Project | one c: Course | p in c.projects

}


pred inv5 {
	// Only students work on projects and 
	// projects must have someone working on them
  all p: Person, tp: Project | tp in p.projects implies p in Student
  all tp: Project | some s: Student | tp in s.projects

}


pred inv6 {
	// Students only work on projects of courses they are enrolled in
  all s: Student, tp: Project, c: Course | tp in s.projects and tp in c.projects implies s in enrolled.c

}


pred inv7 {
	// Students work on at most one project per course
  all s: Student, tp1, tp2: Project, c : Course | 
  (tp1 in s.projects and tp2 in s.projects and tp1 in c.projects and tp2 in c.projects) implies tp1=tp2

}


pred inv8 {
	// A professor cannot teach herself
  all t: Professor, c: Course | t in teaches.c implies t not in enrolled.c

}


pred inv9 {
	// A professor cannot teach colleagues
  all t1,t2: Professor, c1,c2: Course | c1!=c2 and t1 in teaches.c1 and t2 in teaches.c1 and t1 in teaches.c2 implies t2 not in enrolled.c2 

}


pred inv10 {
	// Only students have grades
  all p: Person, c: Course, g: Grade | p in c.grades.g implies p in Student

}


pred inv11 {
	// Students only have grades in courses they are enrolled
  all p: Person, c: Course, g: Grade | p in c.grades.g implies p in enrolled.c

}


pred inv12 {
	// Students have at most one grade per course
  all p: Person, c: Course | lone g: Grade | p in c.grades.g

}


pred inv13 {
	// A student with the highest mark in a course must have worked on a project on that course
  all s : Student | all c : Course |
  s in c.grades.last implies (some p : Project | p in c.projects and p in s.projects)

}


pred inv14 {
	// A student cannot work with the same student in different projects

}


pred inv15 {
	// Students working on the same project in a course cannot have marks differing by more than one unit

}
