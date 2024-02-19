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
	
    all p : Person, c : Course | c in p.enrolled => p in Student

}


pred inv2 {
	// Only professors can teach courses
    all p : Person, c : Course | c in p.teaches => p in Professor

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
  	all p : Project, b : Person | p in b.projects => b in Student
  	all p : Project | some b : Person | p in b.projects
}
 

pred inv6 {
	// Students only work on projects of courses they are enrolled in
	all p : Project, s : Student | p in s.projects => p in s.enrolled.projects
}


pred inv7 {
	// Students work on at most one project per course
    all s : Student, c : Course, disj p1,p2 : Project | p1 in s.projects and p1 in c.projects and p2 in c.projects => p2 not in s.projects

}


pred inv8 {
	// A professor cannot teach herself
	all p : Professor, c : Course | c in p.teaches => c not in p.enrolled 
}


pred inv9 {
	
  
}
pred inv10 {
	// Only students have grades
    
	all c : Course, p : Person, g : Grade | g in c.grades[p] => p in Student
}


pred inv11 {
	// Students only have grades in courses they are enrolled
	all c : Course, g : Grade, s : Student | g in c.grades[s] => c in s.enrolled
}



pred inv12 {
	// Students have at most one grade per course
	all c : Course, g : Grade, s : Student | g in c.grades[s] => #c.grades=1
}
 

pred inv13 {
	// A student with the highest mark in a course must have worked on a project on that course
	
}


pred inv14 {
	// A student cannot work with the same student in different projects
	all disj p1,p2 : Project, disj s1,s2: Student | p1 in s1.projects and p1 in s2.projects => p2 not in s1.projects or p2 not in s2.projects
}


pred inv15 {
	// Students working on the same project in a course cannot have marks differing by more than one unit
	all disj p: Project, disj s1,s2: Student, c : Course | p in s1.projects and p in s2.projects and p in c.projects => c.grades[s1] = c.grades[s2]
}
