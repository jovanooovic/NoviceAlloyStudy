






sig Workstation {
  workers : set Worker,
  succ : set Workstation
}

one sig begin, end in Workstation {}

sig Worker {}

sig Human, Robot extends Worker {}

abstract sig Product {
  parts : set Product
}

sig Material extends Product {}

sig Component extends Product {
  workstation : set Workstation
}

sig Dangerous in Product {}






pred inv1 {
  Worker in (Human + Robot)
}


pred inv2 {
  all w : Workstation | some w . workers
  all w : Worker | one workers . w
}


pred inv3 {
  all c : Component | one c . workstation
}


pred inv4 {
  all c : Component | some c . parts
  all m : Material | no m . parts
}


pred inv5 {
  all w : Workstation | (w . workers in Human) or (w . workers in Robot)
}


pred inv6 {
  no c : Component | c in (c . ^parts)
}


pred inv7 {
  all c : Component, d : Dangerous | d in (c . parts) => c in Dangerous
}


pred inv8 {
  all c : Component | (c in Dangerous) => (c . workstation . workers) in Robot
}


pred inv9 {
  pred inv9 {
  (begin . *succ) in Workstation
  all w : Workstation | w not in (w . ^succ)
}
}


pred inv10 {

}
