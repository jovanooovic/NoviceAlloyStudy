sig Track {
	succs : set Track,
	signals : set Signal
}
sig Junction, Entry, Exit in Track {}

sig Signal {}
sig Semaphore, Speed extends Signal {}

// Specify the following properties
// You can check their correctness with the different commands and
// when specifying each property you can assume all the previous ones to be true

pred inv1 {
	
	some Entry
  	some Exit
}


pred inv2 {
	
	all s:Signal | one t:Track | s in t.signals
}


pred inv3 {
	
  	
  	all t1,t2:Track | t2 in t1.succs implies no (t1 & Exit)
  	
  	all t1:Track | no (t1 & Exit) implies (some t2:Track | t2 in t1.succs)
}


pred inv4 {
	
  	
	all t1,t2:Track | t1 in t2.succs implies no (t1 & Entry)
  	
  	all t1:Track | no (t1 & Entry) implies (some t2:Track | t1 in t2.^succs)
}


pred inv5 {
	
  	
  	all t1,t2:Track | t1 in t2.succs and t1 not in (Track-t2).succs implies no (Junction & t1)
  	all t1,t2:Track | t1 in t2.succs and t1 in (Track-t2).succs implies one (Junction & t1)
  	all t:Track | one (Entry & t) implies no (Junction & t)
}


pred inv6 {
	
  	all t:Track | some s:Speed | one (Entry & t) implies s in t.signals
}


pred inv7 {
	
	all t:Track | t not in t.^succs
}


pred inv8 {
	
  	
  	all t1,t2:Track |  t1!=t2 and one (t1 & Entry) and one (t2 & Exit) implies t2 in t1.^succs
}


pred inv9 {
	
  	all t:Track | no (Junction & t.succs) implies (all s:Semaphore | s not in t.signals)
  	all t:Track | one (Exit & t) implies (all s:Semaphore | s not in t.signals)
}


pred inv10 {
	
  	all t1,t2:Track | t2 in t1.succs and one (Junction & t2) implies (some s:Semaphore | s in t1.signals)
}
