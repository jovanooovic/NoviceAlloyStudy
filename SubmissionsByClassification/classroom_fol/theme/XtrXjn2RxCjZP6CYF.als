












sig Person  {
  
  Tutors : set Person,
  
  Teaches : set Class
}


sig Group {}


sig Class  {
  
  Groups : Person -> Group
}


sig Teacher in Person  {}


sig Student in Person  {}


pred inv1 {
  all p : Person | p in Student
}


pred inv2 {
  not some p : Person | p in Teacher
}


pred inv3 {
  not some p : Person | (p in Teacher) and (p in Student)
}


pred inv4 {
  all p : Person | (p in Teacher) or (p in Student)
}


pred inv5 {
  some c : Class, t : Teacher | t->c in Teaches
}


pred inv6 {
  all t : Teacher | some c : Class | t->c in Teaches
}


pred inv7 {
  all c : Class | some t : Teacher | t->c in Teaches
}


pred inv8 {
  all t : Teacher, c1, c2 : Class |
  (t->c1 in Teaches) and (t->c2 in Teaches) => (c1 = c2)
}


pred inv9 {
  all c : Class, t1, t2 : Teacher |
  (t1->c in Teaches) and (t2->c in Teaches) => (t1 = t2)
}


pred inv10 {
  all c : Class, s : Student | some g : Group | c->s->g in Groups
}


pred inv11 {
  all c : Class, g : Group, p : Person |
  (c->p->g in Groups) => (some t : Teacher | t->c in Teaches)
}


pred inv12 {
  all t : Teacher | some c : Class, g : Group, p : Person |
  (t->c in Teaches) and (c->p->g in Groups)
}


pred inv13 {
  all p1, p2 : Person |
  (p1->p2 in Tutors) => (p1 in Teacher) and (p2 in Student)
}



pred inv14 {
  all s : Person, g : Group, c : Class | (c->s->g in Groups) =>
  (all t : Person | (t->c in Teaches) => (t->s in Tutors))
}



pred inv15 {
  all p1 : Person | some p2, p3 : Person |
  (p2->p1 in Tutors) and ((p2 in Teacher) or
  (p3->p2 in Tutors) and ((p3 in Teacher) or
  (p1->p3 in Tutors) and  (p1 in Teacher)))
}
