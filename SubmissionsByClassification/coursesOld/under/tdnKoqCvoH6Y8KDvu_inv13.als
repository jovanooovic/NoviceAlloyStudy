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

pred inv13 {
all s:Student, c:Course, g:Grade | c->s->g in grades and no g.next => some p:Project | s->p in projects
}

pred inv13c {
	all c : Course, p : Person | last in p.(c.grades) implies some p.projects & c.projects
}

check correct { inv13 <=> inv13c}
pred under { inv13 and !inv13c}
pred over { !inv13 and inv13c}
run over 
run under 

