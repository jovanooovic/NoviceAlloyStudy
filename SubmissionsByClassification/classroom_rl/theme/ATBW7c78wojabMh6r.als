/**
 * Relational logic revision exercises based on a simple model of a 
 * classroom management system.
 * 
 * The model has 5 unary predicates (sets), Person, Student, Teacher,
 * Group and Class, Student and Teacher a sub-set of Person. There are 
 * two binary predicates, Tutors a sub-set of Person x Person, and 
 * Teaches a sub-set of Person x Teaches. There is also a ternary 
 * predicate Groups, sub-set of Class x Person x Group.
 *
 * Solve the following exercises using Alloy's relational logic, which
 * extends first-order logic with:
 *	- expression comparisons 'e1 in e2' and 'e1 = e2'
 *	- expression multiplicity tests 'some e', 'lone e', 'no e' and 'one e'
 *	- binary relational operators '.', '->', '&', '+', '-', ':>' and '<:' 
 *	- unary relational operators '~', '^' and '*'
 *	- definition of relations by comprehension
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

}

/* There are no teachers. */
pred inv2 {

}

/* No person is both a student and a teacher. */
pred inv3 {

}

/* No person is neither a student nor a teacher. */
pred inv4 {

}

/* There are some classes assigned to teachers. */
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

/* Every student in a class is at least tutored by all the teachers
 * assigned to that class. */
pred inv14 {

}



pred inv15 {
  all p1 : Person | some p2, p3 : Person |
  (p2->p1 in Tutors) and ((p2 in Teacher) or
  (p3->p2 in Tutors) and ((p3 in Teacher) or
  (p1->p3 in Tutors) and  (p1 in Teacher)))
}
