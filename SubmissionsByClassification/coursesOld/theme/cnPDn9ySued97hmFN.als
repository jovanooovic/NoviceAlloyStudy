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
	all p : Person | all c : Course | c in p.enrolled implies p in Student
}


pred inv2 {
	// Only professors can teach courses
	all p : Person | all c : Course | c in p.teaches implies p in Professor
}


pred inv3 {
	// Courses must have teachers
  	all c : Course | c in Professor.teaches
}


pred inv4 {
	// Projects are proposed by one course
  	all p : Project | p in Course.projects
	all p : Project | all c1,c2 : Course | p in c1.projects and p in c2.projects implies c1=c2
}


pred inv5 {
	// Only students work on projects and 
	// projects must have someone working on them
  	all p : Person - Student | p.projects = none
	all p : Project | p in Student.projects
}


pred inv6 {
	// Students only work on projects of courses they are enrolled in
	all p : Project | all s : Student | p in s.projects implies p in s.enrolled.projects
}


pred inv7 {
	// Students work on at most one project per course
	all s : Student | all p1,p2 : Project | all c : Course | (p1 + p2) in s.projects and (p1 + p2) in c.projects implies p1=p2
}


pred inv8 {
	// A professor cannot teach herself
  	all p : Professor | all c : Course | c in p.teaches implies c not in p.enrolled
}


pred inv9 {
	// A professor cannot teach colleagues
	
}


pred inv10 {
	// Only students have grades
	all c : Course | all p : Person | p in c.grades.Grade implies p in Student
}


pred inv11 {
	// Students only have grades in courses they are enrolled
	all c : Course | all s : Student | c not in s.enrolled implies s not in c.grades.Grade
}


pred inv12 {
	// Students have at most one grade per course
  	all g1,g2 : Grade | all s : Student | all c : Course | (s->g1 + s->g2) in c.grades implies g1=g2
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
