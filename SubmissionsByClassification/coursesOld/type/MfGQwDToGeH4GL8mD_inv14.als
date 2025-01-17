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
	
    all s : Student , p1,p2 : Project | (p1!=p2 and ((p1+p2) in s.projects)) implies (not p1.~projects & p2.~projects)

}

