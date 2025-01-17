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

pred inv5 {
all x, y : univ | x in Person and y in Project and x->y in Person<:projects implies x in Student
    all x,y : univ | x->y in Person<:projects  implies x in Student and x not in Professor
    all x : univ | x in Project implies some y : Student | y->x in Person<:projects
}

pred inv5c {
	all p : Project | some (Person <: projects).p
	all p : Project | (Person <: projects).p in Student
}

check correct { inv5 <=> inv5c}
pred under { inv5 and !inv5c}
pred over { !inv5 and inv5c}
run over 
run under 

