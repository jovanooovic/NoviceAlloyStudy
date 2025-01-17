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

pred inv13{
	
  all c : Courses | some n : c.grades | (all nota : Person.(c.grades) | Person.n >= nota ) implies (some proj : n.Grade | proj in c.projects)

}

