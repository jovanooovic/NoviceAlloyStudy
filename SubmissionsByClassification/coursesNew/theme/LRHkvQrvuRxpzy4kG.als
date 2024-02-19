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

pred inv15 {
	// Students working on the same project in a course cannot have marks differing by more than one unit

}
pred inv13 { 
	// A student with the highest mark in a course must have worked on a project on that course
	one a:Student |all x : Student-a | all g1,g2:Grade| all z: Course | one q : Project |(z in x.enrolled and z in a.enrolled and
      x->g1 in z.grades and a->g2 in z.grades and
      (univ[g1])>(univ[g2]) and g1!=g2 and a!=x) implies
(q in z.projects and q in x.projects)  

}




pred inv14 {
  all x,y:Student | lone z:Project | z in x.projects and z in y.projects and x!=y
	// A student cannot work with the same student in different projects

}
pred inv12 {
 all x:Student | all y:Course | lone z:Grade | x->z in y.grades
  
	// Students have at most one grade per course

}
pred inv11 {
	// Students only have grades in courses they are enrolled
	all x:Student | all y:Course | all g:Grade| y not in x.enrolled implies x->g not in y.grades
}


pred inv10 {
  	all x:Person | all z:Course | all y:Grade | x->y in z.grades implies x in Student
	// Only students have grades
}
pred inv9 {
  	 all x,y:Person| all z,w:Course | (z in x.teaches and z in y.teaches and x in Professor and w in x.teaches) implies w not in y.enrolled
	// A professor cannot teach colleagues

}

pred inv8 {
  all x:Professor| all y:Course | y in x.enrolled implies y not in x.teaches
	// A professor cannot teach herself

}

pred inv7 {
	// Students work on at most one project per course
	all x:Student | all y,g:Course | all z,w:Project | (z in x.projects and w in x.projects and 
  z in y.projects and w in g.projects and z!=w) implies y!=g 
}


pred inv6 {
	// Students only work on projects of courses they are enrolled in
	all x:Student | all y:Project | all z:Course| (y in x.projects and y in z.projects)implies z in x.enrolled
}
pred inv5 {
	// Only students work on projects and 
	// projects must have someone working on them
	all x:Person | x not in Student implies #(x.projects)=0
  	all x:Project | some y:Person | x in y.projects
}
pred inv4 { 
 
  all x: Project |one c : Course | x in c.projects
	// Projects are proposed by one course

}
pred inv1 {
  all x : Person | x not in Student implies #(x.enrolled)=0
	// Only students can be enrolled in courses

}


pred inv2 {
  all x : Person | x not in Professor implies #(x.teaches)=0
	// Only professors can teach courses
}
pred inv3 {
  	all x : Course | #(teaches.x)>0
	// Courses must have teachers
}
