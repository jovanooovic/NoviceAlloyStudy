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

pred inv9{
	
	all disj p1, p2 : Professor, c : Course | (p1 and p2) in teaches.c implies (all c : p1.teaches | p2 not in enrolled.c)
}

