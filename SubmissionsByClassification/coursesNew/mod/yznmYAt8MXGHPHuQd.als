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


pred inv1 {
	// Only students can be enrolled in courses
	
	enrolled.Course in Student
}


pred inv2 {
	// Only professors can teach courses
	teaches.Course in Professor
}


pred inv3 {
	// Courses must have teachers
	all c: Course | some teaches.c
}


pred inv4 {
	// Projects are proposed by one course
	all p: Project | one getProjectCourse[p]
}

fun getProjectCourse[project: Project]: Course {
	(projects.project & Course)
}


pred inv5 {
	// Only students work on projects and
	// projects must have someone working on them
	


  	all p: Person | some p.projects implies p in Student
	all proj: Project | some p: Person | p->proj in projects
}


pred inv6 {
	// Students only work on projects of courses they are enrolled in
	all s: Student | getProjectCourse[s.projects] in s.enrolled
}

fun getProjectCourse[p : Project]: one Course {
  	projects.p & Course
}


pred inv7 {
	// Students work on at most one project per course
	
}


pred inv8 {
	// A professor cannot teach herself
	all p: Professor & Student | no p.teaches & p.enrolled
}


pred inv9 {
	// A professor cannot teach colleagues
	
}


pred inv10 {
	// Only students have grades
	Course.grades in Student -> Grade
}


pred inv11 {
	// Students only have grades in courses they are enrolled
	all c: Course | all p: (c.grades).Grade | c in p.enrolled
}


pred inv12 {
	// Students have at most one grade per course
	all s: Student | all course: s.enrolled | lone ((course.grades) & s -> Grade)
}


pred inv13 {
	// A student with the highest mark in a course must have worked on a project on that course
	
}


pred inv14 {
	// A student cannot work with the same student in different projects
	all p: Person | all project: p.projects | no ((getProjectStudents[project] & getProjectStudents[p.projects - project]) - p)
}

fun getProjectStudents[project : Project]: set Student {
  	(projects.project & Person)
}


pred inv15 {
	// Students working on the same project in a course cannot have marks differing by more than one unit

}
