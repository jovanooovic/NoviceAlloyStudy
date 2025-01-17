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

pred inv7{
	
  all x : Student | #(x.enrolled.projects) = 1 and #(x.projects) = 1 | #(x.enrolled.projects) = 0 and #(x.projects) = 0

}

