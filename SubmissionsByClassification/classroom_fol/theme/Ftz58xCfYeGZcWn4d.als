

/* The registered persons. */
sig Person  {
	/* Each person tutors a set of persons. */
	Tutors : set Person,
	/* Each person teaches a set of classes. */
	Teaches : set Class
}

/* The registered groups. */
sig Group {}

/* The registered classes. */
sig Class  {
	/* Each class has a set of persons assigned to a group. */
	Groups : Person -> Group
}

/* Some persons are teachers. */
sig Teacher in Person  {}

/* Some persons are students. */
sig Student in Person  {}

/* Every person is a student. */
pred inv1 {
	Person in Student
}

/* There are no teachers. */
pred inv2 {
	no Teacher
}

/* No person is both a student and a teacher. */
pred inv3 {
	no Student & Teacher 
}

/* No person is neither a student nor a teacher. */
pred inv4 {
	Person in Student + Teacher 
}

/* There classes assigned to teachers. */
pred inv5 {
	some Teacher.Teaches
}

/* Every teacher has classes assigned. */
pred inv6 {
	Teacher in Class.~Teaches
}

/* Every class has teachers assigned. */
pred inv7 {
	Class in Teacher.Teaches
}

/* Teachers are assigned at most one class. */
pred inv8 {
	all t:Teacher | lone t.Teaches
}

/* No class has more than a teacher assigned. */
pred inv9 {
	all c:Class,t1,t2:Teacher | t1->c in Teaches and t2->c in Teaches implies t1=t2
}

/* For every class, every student has a group assigned. */
pred inv10 {
	all c:Class,s:Student|some g:Group | c->s->g in Groups
}

/* A class only has groups if it has a teacher assigned. */
pred inv11 {
	all c:Class|some t:Teacher | some Person.(c.Groups) implies c in t.Teaches
}

/* Each teacher is responsible for some groups. */
pred inv12 {
	 all t:Teacher | some g:Group | t in Class.Groups.g
}

/* Only teachers tutor, and only students are tutored. */
pred inv13 {
 Person.^~Tutors in Teacher and Person.^Tutors in Student
}

/* Every student in a class is at least tutored by the teachers
 * assigned to that class. */
pred inv14 {
  all c:Class,s:Student,t:Teacher, g:Group| some s.(c.Groups)->g and some t.(c.Groups)->g implies t in s.^~Tutors
}

/* Assuming a universe of 3 persons, the tutoring chain of every
 * person eventually reaches a Teacher. */
pred inv15 {
	all p:Person | some t:Teacher | t in p.^~Tutors
}