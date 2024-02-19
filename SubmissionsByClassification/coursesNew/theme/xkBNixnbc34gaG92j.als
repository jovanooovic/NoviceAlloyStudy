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
  all p : Person | #(p.enrolled)>0 implies p in Student 

}


pred inv2 {
	// Only professors can teach courses
  all p : Person | #(p.teaches)>0 implies p in Professor

}


pred inv3 {
	// Courses must have teachers
  all c : Course | some p : Person | c in p.teaches 

}


pred inv4 {
	
  all p : Project | one c : Course | p in c.projects

}


pred inv5 {
	// Only students work on projects and 
	// projects must have someone working on them
  all p : Person | #(p.projects)> 0 implies p in Student
  all project : Project | some person : Person | project in person.projects

}


pred inv6 {
	// Students only work on projects of courses they are enrolled in
  all per : Person | all c : Course | all pro : Project | (pro in per.projects and pro in c.projects) implies c in per.enrolled

}


pred inv7 {
	// Students work on at most one project per course
  all pro1,pro2 : Project | all per : Person | all c : Course | (pro1 in per.projects and pro2 in per.projects and pro1 in c.projects and pro1 != pro2) implies pro2 not in c.projects

}


pred inv8 {
	// A professor cannot teach herself
  all p : Person | all c : Course | c in p.teaches implies ( c not in p.enrolled ) 

}


pred inv9 {
	// A professor cannot teach colleagues
  all p1,p2 : Person | all c1,c2 : Course | (c1 in p1.teaches and c1 in p2.teaches) and (c2 in p1.enrolled) implies (c2 not in p2.teaches)

}


pred inv10 {
	// Only students have grades
  all p1: Person | all c : Course | all g : Grade | p1->g in c.grades implies p1 in Student
  

}


pred inv11 {
	// Students only have grades in courses they are enrolled
  all p : Person | all g : Grade | all c : Course | p->g in c.grades implies c in p.enrolled

}


pred inv12 {
	// Students have at most one grade per course
  all p : Student | all c : Course | lone g : Grade | p->g in c.grades

}


pred inv13 {
	// A student with the highest mark in a course must have worked on a project on that course

}


pred inv14 {
	// A student cannot work with the same student in different projects
  all p1,p2 : Person | all pro1,pro2 : Project | (pro1 in p1.projects and pro1 in p2.projects and pro2 in p1.projects and pro1 != pro2 and p1!=p2) implies (pro2 not in p2.projects)

}


pred inv15 {
	// Students working on the same project in a course cannot have marks differing by more than one unit

}
