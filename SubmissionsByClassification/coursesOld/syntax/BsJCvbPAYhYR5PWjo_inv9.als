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
	
	all p1, p2: Professor| all c1: Course | c1 in p1.teaches and c1 in p2.teaches implies ( c2 in p1.teaches implies c2 not in p2.enrolled)
}
