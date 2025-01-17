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

pred inv15{
	
	all proj : Project, disj p1, p2 : (Person<:projects).proj, c : Course<:projects).proj | p1 = p2
}


