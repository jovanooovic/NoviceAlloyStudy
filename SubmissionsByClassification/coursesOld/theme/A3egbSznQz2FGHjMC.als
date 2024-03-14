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
 	enrolled.Course in Student
}


pred inv2 {
	// Only professors can teach courses
  	teaches.Course in Professor
}


pred inv3 {
	// Courses must have teachers
  	all c: Course| some p: Person | p->c in teaches
}


pred inv4 {
	// Projects are proposed by one course
	all p: Project | one c:Course | p in c.projects
}


pred inv5 {
	// Only students work on projects and 
	// projects must have someone working on them
  	all p: Person, o: Project | o in p.projects implies p in Student 
  	all l: Project | some p:Person | p->l in projects

}


pred inv6 {
	// Students only work on projects of courses they are enrolled in
  	all s:Student, c:Course, p:Project | p in c.projects and p in s.projects implies c in s.enrolled 
}


pred inv7 {
	// Students work on at most one project per course
	all s:Student, c:Course, p1,p2:Project | p1 in s.projects and p2 in s.projects and c in s.enrolled and p1 in c.projects and p2 in c.projects implies p1=p2 

}

pred inv8 {
	// A professor cannot teach herself
	all p1: Professor, c: Course | p1->c in enrolled implies p1->c not in teaches 
}


pred inv9 {
	// A professor cannot teach colleagues
	all p1,p2: Professor, c,c2:Course | p1->c in teaches and p2->c in teaches implies (p2->c2 in teaches implies p1->c2 not in enrolled)
     
}


pred inv10 {
	// Only students have grades
	all p:Person, c:Course | p in c.grades.Grade implies p in Student
}


pred inv11 {
	// Students only have grades in courses they are enrolled
	all s:Student, c:Course | s in c.grades.Grade implies c in s.enrolled
}


pred inv12 {
	// Students have at most one grade per course
	all s:Student, c:Course, g1,g2: Grade | g1 in s.(c.grades) and g2 in s.(c.grades) and c in s.enrolled implies g1=g2
}

pred inv13 {
	// A student with the highest mark in a course must have worked on a project on that course
	all s:Student, c:Course | s in c.grades.last implies (some p: Project | p in c.projects and p in s.projects) 
}


pred inv14 {
	// A student cannot work with the same student in different projects
	all s1,s2:Student, c1,c2:Course, p1,p2:Project | (p1 in s1.projects and p1 in s2.projects and p1 in c1.projects) implies (p2 in s2.projects and p2 in c2.projects implies p2 not in s1.projects )
}


pred inv15 {
  
  all s1,s2:Student, p:Project, c:Course, g1,g2:Grade | (p in s1.projects and p in s2.projects and p in c.projects) implies (g1 in s1.(c.grades) and g2 in s2.(c.grades) implies (g1=prev[g2] or g2=prev[g1]) or g1=g2)
	// Students working on the same project in a course cannot have marks differing by more than one unit
	all s1,s2:Student, p:Project, c:Course, g1,g2:Grade | (p in s1.projects and p in s2.projects and p in c.projects) implies (g1 in s1.(c.grades) and g2 in s2.(c.grades) implies (g1=prev[g2] or g2=prev[g1]) or g1=g2) 
}
