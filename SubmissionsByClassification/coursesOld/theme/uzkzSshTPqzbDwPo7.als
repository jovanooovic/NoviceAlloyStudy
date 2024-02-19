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
	all course: Course | all person: Person | course in person.enrolled implies person in Student
}


pred inv2 {
	// Only professors can teach courses
	all course: Course | all person: Person | course in person.teaches implies person in Professor
}


pred inv3 {
	// Courses must have teachers
	all course: Course | some professor: Professor | course in professor.teaches
}


pred inv4 {
	// Projects are proposed by one course
	all proj: Project | one course: Course | proj in course.projects
}


pred inv5 {
	// Only students work on projects and 
	// projects must have someone working on them
	all p: Person - Student | p.projects = none
  	all p: Project | p in Student.projects
}


pred inv6 {
	// Students only work on projects of courses they are enrolled in
	all student: Student | all project: Project | project in student.projects implies project in student.enrolled.projects
}


pred inv7 {
	// Students work on at most one project per course
	all student: Student | all p1, p2: Project | all course: Course | (p1+p2) in student.projects and (p1+p2) in course.projects implies p1 = p2
}


pred inv8 {
	// A professor cannot teach herself
	all prof: Professor | all course: Course | course in prof.enrolled implies course not in prof.teaches
}


pred inv9 {
	// A professor cannot teach colleagues
	all p1, p2: Professor| all c1, c2: Course | c1 in p1.teaches and c1 in p2.teaches implies (c2 in p1.teaches implies c2 not in p2.enrolled)
}


pred inv10 {
	// Only students have grades
	all person: Person | all course: Course | all grade: Grade | person->grade in course.grades implies person in Student
}


pred inv11 {
	// Students only have grades in courses they are enrolled
	all student: Student | all course: Course | all grade: Grade | student->grade in course.grades implies course in student.enrolled
}


pred inv12 {
	// Students have at most one grade per course
	all s: Student | all g1, g2: Grade | all course: Course | s->g1 in course.grades and s->g2 in course.grades implies g1=g2
}


pred inv13 {
	// A student with the highest mark in a course must have worked on a project on that course
	all s: Student | all c: Course | s in c.grades.last implies (one p: Project | p in c.projects and p in s.projects)
}


pred inv14 {
	// A student cannot work with the same student in different projects
	all s1, s2: Student | all p1, p2: Project| (p1 + p2) in s1.projects and (p1 + p2) in s2.projects and s1 != s2 implies p1=p2
}


pred inv15 {
	// Students working on the same project in a course cannot have marks differing by more than one unit

}
