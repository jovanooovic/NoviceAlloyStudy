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
  	no (Person-Professor) & teaches.Course

}


pred inv3 {
	// Courses must have teachers
  	all c:Course | some teaches.c

}


pred inv4 {
	// Projects are proposed by one course
  	all p:Project | p in Course.projects	
    all p:Project,c1,c2:Course | p in c1.projects and p in c2.projects implies c1=c2
}


pred inv5 {
	// Only students work on projects and 
	// projects must have someone working on them
  	no (Person-Student) & projects.Project
  
  	all p:Project | some (Person <: projects.p)

}


pred inv6 {
	// Students only work on projects of courses they are enrolled in
	all p:Project, s:Student,c:Course | p in s.projects and p in c.projects implies c in s.enrolled
}


pred inv7 {
	// Students work on at most one project per course
  	all p1,p2:Project,s:Student,c:Course | p1 in s.projects and p2 in s.projects and p1 in c.projects and p2 in c.projects implies p1=p2

}


pred inv8 {
	// A professor cannot teach herself
  	all p:Professor,c:Course | c in p.teaches implies c not in p.enrolled

}


pred inv9 {
	// A professor cannot teach colleagues
  	all p1,p2:Professor,c1,c2:Course | c1 in p1.teaches and c1 in p2.teaches implies (c2 in p1.teaches implies c2 not in p2.enrolled)

}


pred inv10 {
	// Only students have grades
  	no (Person-Student) & Course.grades.Grade

}


pred inv11 {
	// Students only have grades in courses they are enrolled
  	all c:Course,s:Student,g:Grade | g in s.(c.grades) implies (c in s.enrolled)

}


pred inv12 {
	// Students have at most one grade per course
	all c:Course | lone c.grades
}


pred inv13 {
	// A student with the highest mark in a course must have worked on a project on that course
	all s:Student,c:Course | s in c.grades.last implies (some p:Project | p in c.projects and p in s.projects)
}


pred inv14 {
	// A student cannot work with the same student in different projects
  	all s1,s2:Student,p1,p2:Project | s1 != s2 and p1 in s1.projects and p1 in s2.projects and p2 in s1.projects and p2 in s2.projects implies p1=p2

}


pred inv15 {
	// Students working on the same project in a course cannot have marks differing by more than one unit
	all s1,s2:Student,p:Project,c:Course,g1,g2:Grade | p in s1.projects and p in s2.projects and p in c.projects implies g1 in s1.(c.grades) and g2 in s2.(c.grades) implies g1=prev[g2] or g2=prev[g1] or g1=g2
}
