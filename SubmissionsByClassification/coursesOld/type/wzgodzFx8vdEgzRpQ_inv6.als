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

pred inv6{
	
	all s: Student, proj: Project, c: Course | s->proj in (Person <: projects) and c->proj in (Course <: projects) implies s->c in enrolled.s
}

