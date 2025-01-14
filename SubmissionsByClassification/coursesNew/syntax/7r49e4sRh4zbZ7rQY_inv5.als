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

pred inv5{
	
	
	all s : Student | some p : Project | p in s.projects
  	all p : Project, all s : Person | p in s.projects implies s in Student
}

