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

pred inv12{
	
  	all c : Course | all g: Grade | g in c.grades.^Person 
	all s1, s2 : Student | all c : Course | s1 in c.grades.Grade and s2 in c.grades.Grade implies s1 != s2 and c in s1.enrolled and c in s2.enrolled
  
}

