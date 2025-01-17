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
	
    	all p,q : Professor | all pt : p.teaches | (all qt : q.teaches | pt not in q.enrolled & qt not in p.enrolled)
	
  

}

