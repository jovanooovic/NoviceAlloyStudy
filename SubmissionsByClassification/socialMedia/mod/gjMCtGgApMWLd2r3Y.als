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

// Specify the following properties
// You can check their correctness with the different commands and
// when specifying each property you can assume all the previous ones to be true

pred inv1 {
	

}


pred inv2 {
	

}


pred inv3 {
	

}


pred inv4 {
	

}


pred inv5 {
	
	

}


pred inv6 {
	

}


pred inv7 {
	

}


pred inv8 {
	

}


pred inv9 {
	

}


pred inv10 {
	

}


pred inv11 {
	

}


pred inv12 {
	

}


pred inv13 {
	

}


pred inv14 {
	

}


pred inv15 {
	

}
