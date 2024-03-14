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
  	all x: Person | all c: Course | c in x.enrolled => x in Student 

}


pred inv2 {
	// Only professors can teach courses
  	all x: Person | all c: Course | c in x.teaches => x in Professor

}


pred inv3 {
	// Courses must have teachers
  	all c: Course | some t: Person | t in Professor && c in t.teaches

}


pred inv4 {
	// Projects are proposed by one course
  	all p: Project | one c: Course | c in projects.p 
  	
}


pred inv5 {
	// Only students work on projects and 
	// projects must have someone working on them
  	(all x: Person | all p: Project | p in x.projects => x in Student) && (all j: Project | some z: Person | z in projects.j)
  

}


pred inv6 {
	// Students only work on projects of courses they are enrolled in
  	all s: Student | all c: Course | all p: Project | p in s.projects && p in c.projects => c in s.enrolled 

}


pred inv7 {
	// Students work on at most one project per course
  	
  	all s: Student | all y, z: Project | all c: Course | y in s.projects && z in s.projects && y in c.projects && z in c.projects => y=z 

}


pred inv8 {
	// A professor cannot teach herself
  	all p: Person | all c: Course | c in p.teaches => c not in p.enrolled 

}


pred inv9 {
	// A professor cannot teach colleagues
	all p : Professor | (all col : Professor - p | some (col.teaches & p.teaches) implies no (col.enrolled & p.teaches))

}


pred inv10 {
	// Only students have grades
    all c : Course | (all p : Person, g : Grade | p->g in c.grades implies p in Student)

}


pred inv11 {
	// Students only have grades in courses they are enrolled
    all s : Student | (all c : Course, g : Grade | s->g in c.grades implies c in s.enrolled)
  
}


pred inv12 {
	// Students have at most one grade per course
  	all s : Student | (all c : Course | lone g : Grade | s->g in c.grades)
  
}


pred inv13 {
	// A student with the highest mark in a course must have worked on a project on that course
	all s: Student | all c: Course | s in c.grades.last => (some p : Project | p in c.projects && p in s.projects)
}


pred inv14 {
	
  	all x: Student | all col : Student - x | lone (x.projects & col.projects)
  
}


pred inv15 {
	// Students working on the same project in a course cannot have marks differing by more than one unit
	all s1, s2: Student| all c: Course| all p: Project| (s1!=s2 && p in s1.projects && p in s2.projects && p in c.projects) => (all g1,g2 : Grade | g1 in s1.(c.grades) && g2 in s2.(c.grades) => (g1=prev[g2] || g2=prev[g1] || g1=g2))

}
