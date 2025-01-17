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
	
  	all s,p in univ | s in Student and p in Project and s->p in projects implies all c : Course | c->p in projects implies s->c in enrolled

}

