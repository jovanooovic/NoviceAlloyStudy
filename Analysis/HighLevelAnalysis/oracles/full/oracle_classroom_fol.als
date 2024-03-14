
pred inv1o {
	Person in Student
}
/* Every person is a student. */

pred inv2o {
	no Teacher
}
/* There are no teachers. */

pred inv3o {
	no Student & Teacher
}
/* No person is both a student and a teacher. */

pred inv4o {
	Person in Student + Teacher
}
/* No person is neither a student nor a teacher. */\

pred inv5o {
	some Teacher.Teaches
}
/* There classes assigned to teachers. */

pred inv6o {
	all t:Teacher | some t.Teaches
}
/* Every teacher has classes assigned. */

pred inv7o {
	all c:Class | some Teacher&Teaches.c
}
/* Every class has teachers assigned. */

pred inv8o {
	all t:Teacher | lone t.Teaches
}
/* Teachers are assigned at most one class. */

pred inv9o {
	all c:Class | lone Teacher&Teaches.c
}
/* No class has more than a teacher assigned. */

pred inv10o {
	all c:Class,s:Student | some s.(c.Groups)
}
/* For every class, every student has a group assigned. */

pred inv11o {
	all c:Class | some c.Groups implies some Teacher&Teaches.c
}
/* A class only has groups if it has a teacher assigned. */

pred inv12o {
	all x:Teacher | some x.Teaches.Groups
}
/* Each teacher is responsible for some groups. */

pred inv13o {
	Tutors in Teacher -> Student
}
/* Only teachers tutor, and only students are tutored. */

pred inv14o {
	all c:Class,p:Person | p in (c.Groups).Group implies Teaches.c -> p in Tutors
}
/* Every student in a class is at least tutored by the teachers\n * assigned to that class. */

pred inv15o {
	all p:Person | some Teacher&(^Tutors).p
}
/* Assuming a universe of 3 persons, the tutoring chain of every\n * person eventually reaches a Teacher. */