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
	
	all p1,p2 : Person | all c1 : Course | (p1!=p2 and (p1,p2)->c1 in teaches) implies  
}

