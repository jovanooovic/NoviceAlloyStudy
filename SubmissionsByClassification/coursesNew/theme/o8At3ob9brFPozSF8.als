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
  	all p:Person | #p.enrolled > 0 implies p in Student

}


pred inv2 {
	// Only professors can teach courses
  	all p : Person | #p.teaches > 0 implies p in Professor

}


pred inv3 {
	// Courses must have teachers
  	all c : Course | #teaches.c > 0 

}


pred inv4 {
	// Projects are proposed by one course
  	
  	all p : Project | #projects.p:>Course = 1  

}


pred inv5 {
	// Only students work on projects and 
	// projects must have someone working on them
  	all p : Project | Person:>projects.p in Student and #Student:>projects.p >=1  

}


pred inv6 {
	// Students only work on projects of courses they are enrolled in
  	all s : Student | s.projects in s.enrolled.projects 

}


pred inv7 {
	// Students work on at most one project per course
  	all p : Student, c : Course |  #c.projects&p.projects<2

}


pred inv8 {
	// A professor cannot teach herself
  	all p:Professor,c:Course | c in p.teaches implies c not in p.enrolled 
  	

}


pred inv9 {
	// A professor cannot teach colleagues
  	all disj p,p1:Professor | #p.teaches&p1.teaches>0 implies (#p.enrolled&p1.teaches=0 and  #p1.enrolled&p.teaches=0)

}


pred inv10 {
	// Only students have grades
  	all p:Person ,c:Course | #p->Grade&c.grades>0 implies p in Student 

}


pred inv11 {
	// Students only have grades in courses they are enrolled
  	all s : Student,c:Course | #s->Grade&c.grades>0 implies c in s.enrolled

}


pred inv12 {
	// Students have at most one grade per course
  	all s : Student,c:Course | #s->Grade&c.grades<2

}


pred inv13 {
	// A student with the highest mark in a course must have worked on a project on that course
  	all s : Student, c :Course | s in c.grades.last implies #s.projects&c.projects>0

}


pred inv14 {
	// A student cannot work with the same student in different projects
	all disj s1,s2:Student  | #s1.projects&s2.projects<2
}


pred inv15 {
	// Students working on the same project in a course cannot have marks differing by more than one unit
  	
  	all disj s1,s2:Student ,p:Project, c: Course:>projects.p, g : c.grades, e1: s1->Grade&c.grades, e2: s2->Grade&c.grades | ( p in s1.projects and p in s2.projects) implies ( (s2 in g ) or ( s1 in g ))   
  
  
  
  

}
