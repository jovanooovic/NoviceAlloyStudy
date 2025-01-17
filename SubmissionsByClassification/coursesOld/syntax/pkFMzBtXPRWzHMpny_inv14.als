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

pred inv14{
	
   all s : Student , p,p1:Project | (p1!=p and (p+p1) in s.projects) implies (not (p.projects)-{s}) & (p1.projects)-{s}))
}

