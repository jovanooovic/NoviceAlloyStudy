/**
 * First-order logic revision exercises based on a simple model of a 
 * classroom management system.
 * 
 * The model has 5 unary predicates (sets), Person, Student, Teacher,
 * Group and Class, Student and Teacher a sub-set of Person. There are 
 * two binary predicates, Tutors a sub-set of Person x Person, and 
 * Teaches a sub-set of Person x Teaches. There is also a ternary 
 * predicate Groups, sub-set of Class x Person x Group.
 *
 * Solve the following exercises using only Alloy's first-order 
 * logic:
 *	- terms 't' are variables
 *	- atomic formulas are either term comparisons 't1 = t2' and 
 * 't1 != t2' or n-ary predicate tests 't1 -> ... -> tn in P' and 
 * 't1 -> ... -> tn not in P'
 *	- formulas are composed by 
 *		- Boolean connectives 'not', 'and', 'or' and 'implies'
 *		- quantifications 'all' and 'some' over unary predicates
 **/

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
  all p : Person | p in Student

}

/* There are no teachers. */
pred inv2 {
  all p : Person | p not in Teacher
  

}

/* No person is both a student and a teacher. */
pred inv3 {
  all p,q:Person | p in Teacher and q in Student implies p != q

}

/* No person is neither a student nor a teacher. */
pred inv4 {
	all p : Person | p in Teacher or p in Student
}

/* There classes assigned to teachers. */
pred inv5 {

}

/* Every teacher has classes assigned. */
pred inv6 {

}

/* Every class has teachers assigned. */
pred inv7 {

}

/* Teachers are assigned at most one class. */
pred inv8 {

}

/* No class has more than a teacher assigned. */
pred inv9 {

}

/* For every class, every student has a group assigned. */
pred inv10 {

}

/* A class only has groups if it has a teacher assigned. */
pred inv11 {

}

/* Each teacher is responsible for some groups. */
pred inv12 {

}

/* Only teachers tutor, and only students are tutored. */
pred inv13 {

}

/* Every student in a class is at least tutored by the teachers
 * assigned to that class. */
pred inv14 {

}

/* Assuming a universe of 3 persons, the tutoring chain of every
 * person eventually reaches a Teacher. */
pred inv15 {

}
