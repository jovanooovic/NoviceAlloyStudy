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

pred inv7 {
all s,p1,p2,c : univ | s in Student and p1 in Project and p2 in Project and c in Course and s->p1 in Person <: projects and s->p2 in Person <: projects and c->p1 in Course <: projects and c->p2 in Course <: projects implies p1=p2
}

pred inv7c {
	all p : Person, c : Course | lone p.projects & c.projects
}

check correct { inv7 <=> inv7c}
pred under { inv7 and !inv7c}
pred over { !inv7 and inv7c}
run over 
run under 

