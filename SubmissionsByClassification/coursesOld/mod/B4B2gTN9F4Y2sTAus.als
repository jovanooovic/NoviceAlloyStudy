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
  all p : Person, c : Course | p not in Student implies p->c not in enrolled
}


pred inv2 {
	// Only professors can teach courses
  all p : Person, c : Course | p not in Professor implies p->c not in teaches
}


pred inv3 {
	// Courses must have teachers
  all c : Course | some p : Person | p->c in teaches
}


pred inv4 {
	// Projects are proposed by one course
  all p : Project | some c1 : Course | c1->p in Course<:projects and all c2 : Course | c2->p in Course<:projects implies c1 = c2
}


pred inv5 {
	// Only students work on projects and 
	// projects must have someone working on them
	all proj : Project | (all person1 : Person | person1 not in Student implies person1->proj not in Person<:projects) and (some person2 : Person | person2->proj in Person<:projects)
}


pred inv6 {
	// Students only work on projects of courses they are enrolled in
	all s : Student, p : Project | s->p in Person<:projects implies some c : Course | s->c in enrolled and c->p in Course<:projects
}


pred inv7 {
	// Students work on at most one project per course
	all s : Student, c : Course, p1, p2 : Project | s->c in enrolled and 
																									s->p1 in Person<:projects and 
																									c->p1 in Course<:projects and 
																									s->p2 in Person<:projects and 
																									c->p2 in Course<:projects implies p1 = p2
}


pred inv8 {
	// A professor cannot teach herself
	all p : Professor, c : Course | p->c in teaches implies c->p not in enrolled
}


pred inv9 {
	// A professor cannot teach colleagues
		
}


pred inv10 {
	// Only students have grades
	all p : Person, c : Course, g : Grade | p not in Student implies c->p->g not in grades
}


pred inv11 {
	// Students only have grades in courses they are enrolled
	all s : Student, c : Course, g : Grade | c->s->g in grades implies s->c in enrolled
}


pred inv12 {
	// Students have at most one grade per course
	all s : Student | some c : Course, g1 : Grade | c->s->g1 in grades implies all g2 : Grade | c->s->g2 in grades implies g1 = g2
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
