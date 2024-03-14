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
  all c:Course, p:Person | p in enrolled.c implies p in Student
}

pred inv2 {
	// Only professors can teach courses
  all c:Course, p:Person | p in teaches.c implies p in Professor
}

pred inv3 {
	// Courses must have teachers
  all c:Course | some p:Professor | p in teaches.c
}

pred inv4 {
	// Projects are proposed by one course
  all p:Project | one c:Course | p in c.projects
}

pred inv5 {
	
  all proj:Project, p:Person | (p in projects.proj implies p in Student) and (some p2:Person | p2 in projects.proj)
  
}

pred inv6 {
	// Students only work on projects of courses they are enrolled in
  all s:Student, p:Project| p in s.projects implies (some c:Course | p in c.projects and c in s.enrolled)
}

pred inv7 {
	// Students work on at most one project per course
  
  all s:Student, c : s.enrolled | lone p:Project | p in c.projects and p in s.projects
  
}

pred inv8 {
	// A professor cannot teach herself
  all p:Professor, c : p.teaches | p not in enrolled.c
  
}

pred inv9 {
	// A professor cannot teach colleagues
  all p:Professor, c : p.teaches, p2:Professor | p2 in teaches.c implies (all c2:Course | p in teaches.c2 implies p2 not in enrolled.c2)
  
}

pred inv10 {
	// Only students have grades
  all c:Course, p:Person, g:Grade | c->p->g in grades implies p in Student
  
}

pred inv11 {
	// Students only have grades in courses they are enrolled
  
  all c: Course, p:Person, g: Grade | p->g in c.grades implies (c in p.enrolled and p in Student)
}

pred inv12 {
	// Students have at most one grade per course
  all c:Course, p:Person | lone g:Grade | p->g in c.grades 
  
}

pred inv13 {
	// A student with the highest mark in a course must have worked on a project on that course
  all s:Student, c:Course | s in c.grades.last implies (some p:Project | p in c.projects and p in s.projects)
}

pred inv14 {
	// A student cannot work with the same student in different projects
  
  all x: Student, col : Student - x | lone (x.projects & col.projects) 
}


pred inv15 {
	// Students working on the same project in a course cannot have marks differing by more than one unit
    all s1:Student, s2:Student, c:Course, p:Project| (s1!=s2 and p in s1.projects and p in s2.projects and p in c.projects) implies ( all g1,g2:Grade | s1->g1 in c.grades and g2 in s2.(c.grades) implies (g1=prev[g2] or g2 = prev[g1] or g1=g2) ) 

}
