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

pred inv9{
	
  	 
    all p1 , p2 : Professor, c : Course |(p1->c in enrolled) && (p1!=p2) implies p2->c not in teaches 
  	all p1 , p2 : Professor, c : Course | p2->c in enrolled) && (p1!=p2) implies p1->c not in teaches

}

