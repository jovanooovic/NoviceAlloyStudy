




//SECRET
abstract sig Feedback {}
//SECRET
lone sig ViolatesDeclarations, IncorrectTest, 
Chaff1_Undetected, Chaff2_Undetected, Chaff3_Undetected, Chaff4_Undetected, Chaff5_Undetected, Chaff6_Undetected extends Feedback {}
//SECRET
abstract sig Atom {}
//SECRET
one sig a,b,c,d,e,f extends Atom {}
//SECRET
abstract sig Instance {
  A : set Atom,
  r : Atom -> Atom
}
//SECRET
sig Example, CounterExample extends Instance {}
//SECRET
pred structure[i : Instance] {
  i.r in i.A -> i.A
}
//SECRET
pred oracle[i : Instance] {
  
  (i.r).(i.r) in i.r 
}
//SECRET
pred chaff1[i : Instance] {
  
  (i.A->i.A) + (i.r).(i.r) in i.r
}
//SECRET
pred chaff2[i : Instance] {
  
  i.r in (i.r).(i.r) 
}
//SECRET
pred chaff3[i : Instance] {
  
  (i.r).(i.r) in i.r 
  no iden & ^(i.r)
}
//SECRET
pred chaff4[i : Instance] {
  
  (i.r).(i.r) in i.r 
  no iden & (i.r)  
}
//SECRET
pred chaff5[i : Instance] {
  
  some disj x, y, z : i.A | x->y in i.r and y->z in i.r and x->z in i.r
}
//SECRET
pred chaff6[i : Instance] {
  
  all disj x, y, z : i.A | x->y in i.r and y->z in i.r implies x->z in i.r
}

//SECRET
fact {
  some ViolatesDeclarations iff (some i : Instance | not structure[i])
  some IncorrectTest iff (no ViolatesDeclarations and (some i : Instance | not (i in Example iff oracle[i])))
  some Chaff1_Undetected iff (no ViolatesDeclarations and no IncorrectTest and (all i : Instance | oracle[i] iff chaff1[i]))
  some Chaff2_Undetected iff (no ViolatesDeclarations and no IncorrectTest and (all i : Instance | oracle[i] iff chaff2[i]))
  some Chaff3_Undetected iff (no ViolatesDeclarations and no IncorrectTest and (all i : Instance | oracle[i] iff chaff3[i]))  
  some Chaff4_Undetected iff (no ViolatesDeclarations and no IncorrectTest and (all i : Instance | oracle[i] iff chaff4[i]))  
  some Chaff5_Undetected iff (no ViolatesDeclarations and no IncorrectTest and (all i : Instance | oracle[i] iff chaff5[i]))  
  some Chaff6_Undetected iff (no ViolatesDeclarations and no IncorrectTest and (all i : Instance | oracle[i] iff chaff6[i]))  
}
//SECRET
check {
  no Feedback
} for 0 but 7 Feedback





one sig MissingSelfLoops extends CounterExample {} {
  A = a + b
  r = a->b + b->a
}


