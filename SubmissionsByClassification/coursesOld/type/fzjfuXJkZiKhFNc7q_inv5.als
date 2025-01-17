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
	
	
	
  	
  	
  	
  	
  
  	all x : Project | (projects <: Person).x in Student
  	all x : Project | some (projects <: Person).x
}

