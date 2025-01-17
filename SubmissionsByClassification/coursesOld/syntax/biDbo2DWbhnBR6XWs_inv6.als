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

pred inv6{
	
	all s: Student | all c : Course | ((all p: Project| s -> p in projects and c -> p in projects) => (student -> c in enrolled))
}

