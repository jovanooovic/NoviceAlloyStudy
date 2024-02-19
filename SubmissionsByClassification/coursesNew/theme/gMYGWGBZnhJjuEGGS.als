open util/ordering[Grade]

sig Person {
	teaches : set Course,
	enrolled : set Course,
	projects : set Project
}

sig Professor, Student in Person {}

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
  all p:Person - Student | no p.enrolled	

}


pred inv2 {
	// Only professors can teach courses
  all p:Person - Professor | no p.teaches

}


pred inv3 {
	// Courses must have teachers
  all c:Course | some teacher:Person | c in teacher.teaches

}


pred inv4 {
	// Projects are proposed by one course
  all p:Project | one c:Course | p in c.projects

}


pred inv5 {
	// Only students work on projects and 
	// projects must have someone working on them
  all p:Project | some student:Person | p in student.projects && (all x:Person - Student | no x.projects)

}


pred inv6 {
	// Students only work on projects of courses they are enrolled in
  all student:Student, p:Project | p in student.projects implies p in student.enrolled.projects

}


pred inv7 {
	// Students work on at most one project per course
  all student:Student | all studentCourses:student.enrolled | lone p:Project | p in studentCourses.projects & student.projects

}


pred inv8 {
	// A professor cannot teach herself
  all p:Professor | all courseTeached:p.teaches | courseTeached not in p.enrolled
  

}


pred inv9 {
	// A professor cannot teach colleagues
  all p1:Professor | all p2:Professor - p1 | some (p1.teaches & p2.teaches) implies no (p1.teaches & p2.enrolled)

}


pred inv10 {
	// Only students have grades
  all c : Course, p:Person, g:Grade | p->g in c.grades implies p in Student 

}


pred inv11 {
	// Students only have grades in courses they are enrolled
  all c:Course, p:Person, g:Grade | p->g in c.grades implies p in Student and c in p.enrolled

}


pred inv12 {
	// Students have at most one grade per course
  all course:Course | (all p:Person | lone g:Grade | p->g in course.grades)

}


pred inv13 {
	// A student with the highest mark in a course must have worked on a project on that course
  

}


pred inv14 {
	// A student cannot work with the same student in different projects
  all s1:Student | all s2:Student - s1 | lone (s1.projects & s2.projects)

}


pred inv15 {
	// Students working on the same project in a course cannot have marks differing by more than one unit

}
