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
	
	
  	
  	all p: Person, c: Course |
(c in p.enrolled <=> c in (c: Course | c in p.grades))

