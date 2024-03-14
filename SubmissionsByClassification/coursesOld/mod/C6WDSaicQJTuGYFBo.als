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
  all p : Person | all t : Course | t in p.teaches implies p in Professor
}


pred inv3 {
	// Courses must have teachers
  all c : Course | some p : Professor | c in p.teaches

}


pred inv4 {
	// Projects are proposed by one course
  all p : Project | one c : Course | p in c.projects

}


pred inv5 {
	// Only students work on projects and 
	// projects must have someone working on them
  all p : Project | some s : Student | p in s.projects 
  all p : Project | all pe : Person | p in pe.projects implies pe in Student

}


pred inv6 {
	// Students only work on projects of courses they are enrolled in

  
  all p : Person | all proj : Project | proj in p.projects implies (some c : Course | proj in c.projects and c in p.enrolled)
  
  
}


pred inv7 {
	// Students work on at most one project per course
   all s : Student | all p1,p2 : Project | all c : Course | p1 in s.projects and p2 in s.projects and p1 in c.projects and p2 in c.projects implies p1 = p2


}


pred inv8 {
	// A professor cannot teach herself
  all p : Professor | all c : Course | c in p.teaches implies c not in p.enrolled
 
}


pred inv9 {
	// A professor cannot teach colleagues
  all p1,p2 : Professor | all c : Course | p1 != p2 and c in p1.teaches and c in p2.teaches implies (all c2 : Course | c2 in p1.teaches implies c2 not in p2.enrolled)
}



pred inv10 {
	// Only students have grades
  all p : Person | all c : Course | all g : Grade | p->g in c.grades implies p in Student

}


pred inv11 {
	// Students only have grades in courses they are enrolled
  all s : Student | all c : Course | all g : Grade | s->g in c.grades implies c in s.enrolled

}


pred inv12 {
	// Students have at most one grade per course
  all s : Student | all c : Course | c in s.enrolled implies lone g : Grade | s->g in c.grades

}

pred inv12 {
	// Students have at most one grade per course
  	all p1 : Student | all c1 : Course |
  	(p1->c1 in enrolled) implies (lone g1 : Grade | c1->p1->g1 in grades) 
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
