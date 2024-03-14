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
	all p:Person  |all c:Course | c in p.enrolled implies p in Student 
}


pred inv2 {
	// Only professors can teach courses
	all p:Person | all c:Course | c in p.teaches implies p in Professor
}


pred inv3 {
	// Courses must have teachers
	all c:Course | some p:Person | c in p.teaches 
}
 

pred inv4 {
	// Projects are proposed by one course
	all p:Project | one c:Course | p in c.projects 
}


pred inv5 {
	// Only students work on projects and 
	// projects must have someone working on them
	(all p:Person | all pr:Project | pr in p.projects implies p in Student)
    and
    (all pr:Project | some p:Person | pr in p.projects)
}


pred inv6 {
	// Students only work on projects of courses they are enrolled in
	all p:Student | all pr:Project | pr in p.projects implies pr in p.enrolled.projects 
}


pred inv7 {
	// Students work on at most one project per course
	all x : Student, y : Course, z, w : Project | x->z in projects and x->w in projects and y->z in projects and y->w in projects implies w = z
}


pred inv8 {
	// A professor cannot teach herself
	all p:Professor | all c:Course | c in p.teaches implies c not in p.enrolled  
}


pred inv9 {
	// A professor cannot teach colleagues
	all p1:Professor | all c:Course | c in p1.teaches implies (all p:Person-Student | c not in p.enrolled ) 
}


pred inv10 {
	// Only students have grades
	all p:Person | all g:Grade | all c1:Course | (c1->p->g in grades) implies (p in Student)
}


pred inv11 {
	// Students only have grades in courses they are enrolled
	all s:Student | all g:Grade | all c:Course | (c->s->g in grades) implies c in s.enrolled
}


pred inv12 {
	// Students have at most one grade per course
	all s:Student | all c:Course | lone g:Grade | c->s->g in grades 
}


pred inv13 {
	// A student with the highest mark in a course must have worked on a project on that course
	all s:Student | all c:Course | s in c.grades.last implies (some p:Project | p in s.projects and p in c.projects )
}


pred inv14 {
	// A student cannot work with the same student in different projects
	all s1,s2 : Student | all p1,p2 : Project |
  	(s1->p1 in projects and s2->p1 in projects and s1!=s2 and p1!=p2) implies
  	( (s1->p2 not in projects) or (s2->p2 not in projects) )
}


pred inv15 {
	// Students working on the same project in a course cannot have marks differing by more than one unit

}
