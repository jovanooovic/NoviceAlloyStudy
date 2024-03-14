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
	// Only students can be enrolled in courses
	no (Person - Student).enrolled
}


pred inv2 {
	// Only professors can teach courses
	no (Person - Professor).teaches
}


pred inv3 {
	// Courses must have teachers
	Course in Professor.teaches
}


pred inv4 {
	// Projects are proposed by one course
	all p : Project |
  		one c : Course |
  			p in c.projects
}


pred inv5 {
	// Only students work on projects and 
	// projects must have someone working on them
	all p : Project |
  		some s : Student |
  			p in s.projects
  	
  	no (Person - Student).projects
}


pred inv6 {
	// Students only work on projects of courses they are enrolled in
	all s : Student |
  		all p : s.projects |
  			p in s.enrolled.projects
}


pred inv7 {
	// Students work on at most one project per course
	all s : Student |
  		all c : s.enrolled |
  			all p1, p2 : s.projects & c.projects |
  				p1 = p2
}


pred inv8 {
	// A professor cannot teach herself
	all p : Professor |
  		no p.teaches & p.enrolled
}


pred inv9 {
	// A professor cannot teach colleagues
	all p1 : Professor |
  		all p2 : Professor |
  			(some p2.teaches & p1.teaches) implies (no p1.teaches & p2.enrolled)
}


pred inv10 {
	// Only students have grades
	no (Person - Student).(Course.grades)
}


pred inv11 {
	// Students only have grades in courses they are enrolled
	all s : Student |
  		all c : Course |
  			some s.(c.grades) implies c in s.enrolled
}


pred inv12 {
	// Students have at most one grade per course
	all s : Student |
  		all c : Course |
  			lone s.(c.grades)
}


pred inv13 {
	// A student with the highest mark in a course must have worked on a project on that course
  	
  	
  
  	
  	
  	
  	
  	
  	
  	
  	
  	
  	
  	
  	
	all s : Student |
  		all c : s.enrolled |
  			((some max[Grade] & s.(c.grades)) implies (some s.projects & c.projects))
  	
  	
  	
  	
  	
  	
    
  	
    
  	
}


pred inv14 {
	// A student cannot work with the same student in different projects
	all disj s1, s2 : Student |
  		lone (s1.projects & s2.projects)
}


pred inv15 {
	// Students working on the same project in a course cannot have marks differing by more than one unit
	all disj s1, s2 : Student |
  		all c : s1.enrolled & s2.enrolled |
          all g1 : s1.(c.grades), g2 : s2.(c.grades) |
                  (some (s1.projects & s2.projects & c.projects) and some g1 and some g2 )implies (g2 in g1.prev or g1 in g2.prev or g1 = g2)
}
