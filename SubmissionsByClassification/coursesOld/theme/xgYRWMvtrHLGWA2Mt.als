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
  	all p1 : Person | all c1 : Course | p1->c1 in enrolled implies p1 in Student

}


pred inv2 {
	// Only professors can teach courses
  	all p1 : Person | all c1 : Course | p1->c1 in teaches implies p1 in Professor

}


pred inv3 {
	// Courses must have teachers
  	all c1 : Course | some p1 : Professor | p1->c1 in teaches

}


pred inv4 {
	// Projects are proposed by one course
  	all p1 : Project | one c1 : Course | c1->p1 in projects

}


pred inv5 {
	// Only students work on projects and 
	// projects must have someone working on them
  	(all p1 : Project | some pr1 : Student | pr1->p1 in projects)
  	(all p2 : Project | all pr2 : Person   | pr2->p2 in projects implies pr2 in Student)
}


pred inv6 {
	// Students only work on projects of courses they are enrolled in
  	all s1 : Person | all p1 : Project | 
  	s1->p1 in projects implies (some c1 : Course | c1->p1 in projects and s1->c1 in enrolled) 

}


pred inv7 {
	// Students work on at most one project per course
  	all s1 : Student | all p1,p2 : Project | all c1 : Course |
    (
	(s1->p1 in projects) and (s1->p2 in projects) and
     	(c1->p1 in projects) and (c1->p2 in projects)
    )
  	implies p1=p2 

}


pred inv8 {
	// A professor cannot teach herself
  	all p1 : Professor | all c1:Course |
  	p1->c1 in teaches implies p1->c1 not in enrolled

}


pred inv9 {
    
    all p1,p2 : Professor | all c1:Course |
      (p1!=p2 and p1->c1 in teaches and p2->c1 in teaches) implies 
       (all c2 : Course | p1->c2 in teaches implies p2->c2 not in enrolled)
}


pred inv10 {
	// Only students have grades
  	all p1 : Person | all c1 : Course | all g1 : Grade|
  	(c1->p1->g1 in grades) implies (p1 in Student)

}


pred inv11 {
	// Students only have grades in courses they are enrolled
  	all p1 : Student | all c1 : Course | all g1 : Grade|
  	(c1->p1->g1 in grades) implies (p1->c1 in enrolled)

}


pred inv12 {
	// Students have at most one grade per course
  	all p1 : Student | all c1 : Course |
  	(p1->c1 in enrolled) implies (lone g1 : Grade | c1->p1->g1 in grades) 
}


pred inv13 {
	// A student with the highest mark in a course must have worked on a project on that course
  	all s : Student | all c : Course |
  	s in c.grades.last implies (some p : Project | p in c.projects and p in s.projects)
}


pred inv14 {
	// A student cannot work with the same student in different projects
  	all s1,s2 : Student | all p1,p2 : Project |
  	(s1->p1 in projects and s2->p1 in projects and s1!=s2 and p1!=p2) implies
  	( (s1->p2 not in projects) or (s2->p2 not in projects) )

}


pred inv15 {
	// Students working on the same project in a course cannot have marks differing by more than one unit
	all p : Project | all s1,s2 : Student | all c : Course |
  	(s1!=s2 and p in s1.projects and p in s2.projects and p in c.projects) implies
  	(all g1,g2 : Grade | g1 in s1.(c.grades) and g2 in s2.(c.grades) 
  	implies (g1=prev[g2] or g2=prev[g1] or g1=g2))
	
}
