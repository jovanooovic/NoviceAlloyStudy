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

pred inv11{
	
  all s : Student | all c : Courses | all g : Grade | (c->p->g in grades) implies (p->c in enrolled)
}

