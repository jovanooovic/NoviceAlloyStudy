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
	all p:Person | p in Student
}

/* There are no teachers. */
pred inv2 {
	all p:Person | p not in Teacher
}

/* No person is both a student and a teacher. */
pred inv3 {
 all p:Person | p in Teacher implies p not in Student
}

/* No person is neither a student nor a teacher. */
pred inv4 {
  all p:Person | p in Student or p in Teacher

}

/* There classes assigned to teachers. */
pred inv5 {
	some t:Teacher,c:Class | t->c in Teaches
  }
/* Every teacher has classes assigned. */
pred inv6 {
	all t:Teacher | some c:Class | t->c in Teaches
}

/* Every class has teachers assigned. */
pred inv7 {
  all c: Class | some t:Teacher | t->c in Teaches

}

/* Teachers are assigned at most one class. */
pred inv8 {
	all t:Teacher | all c1,c2:Class | t->c1 in Teaches and t->c2 in Teaches implies c1=c2
}

/* No class has more than a teacher assigned. */
pred inv9 {
	all t1:Teacher,t2:Teacher,c:Class | (t1->c in Teaches and t2->c in Teaches) implies t1=t2

}

/* For every class, every student has a group assigned. */
pred inv10 {
	all c:Class,s:Student | some g:Group | c->s->g in Groups
}

/* A class only has groups if it has a teacher assigned. */
pred inv11 {
	all c:Class,s:Student | all g:Group |some t:Teacher| c->s->g in Groups implies t->c in Teaches
  
  
  
 
  
  all c:Class,g:Group,s:Student | some t:Teacher | ( c->s->g in Groups) implies t->c in Teaches
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
