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
	// The station has at least one entry and one exit

}
//SECRET
pred inv1o {
	some Entry
	some Exit
}
//SECRET
check inv1 {
	inv1 iff inv1o
} for 2

pred inv2 {
	// Signals belong to one track

}
//SECRET
pred inv2o {
	all s : Signal | one signals.s
}
//SECRET
check inv2 {
	inv1o implies
	(inv2 iff inv2o)
} for 2

pred inv3 {
	// Exit tracks are those without successor

}
//SECRET
pred inv3o {
	all t : Track | t in Exit iff no t.succs
}
//SECRET
check inv3 {
	inv1o and inv2o implies
	(inv3 iff inv3o)
} for 2

pred inv4 {
	// Entry tracks are those without predecessors

}
//SECRET
pred inv4o {
	all t : Track | t in Entry iff no succs.t
}
//SECRET
check inv4 {
	inv1o and inv2o and inv3o implies
	(inv4 iff inv4o)
} for 2

pred inv5 {
	// Junctions are the tracks with more than one predecessor

}
//SECRET
pred inv5o {
	all t : Track | t not in Junction iff lone succs.t
}
//SECRET
check inv5 {
	inv1o and inv2o and inv3o and inv4o implies
	(inv5 iff inv5o)
} for 4

pred inv6 {
	// Entry tracks must have a speed signal

}
//SECRET
pred inv6o {
	all t : Entry | some t.signals & Speed
}
//SECRET
check inv6 {
	inv1o and inv2o and inv3o and inv4o and inv5o implies
	(inv6 iff inv6o)
} for 4

pred inv7 {
	// The station has no cycles

}
//SECRET
pred inv7o {
	no t : Track | t in t.^succs
}
//SECRET
check inv7 {
	inv1o and inv2o and inv3o and inv4o and inv5o and inv6o implies
	(inv7 iff inv7o)
} for 4

pred inv8 {
	// It should be possible to reach every exit from every entry

}
//SECRET
pred inv8o {
	all e : Entry, x : Exit | x in e.*succs
}
//SECRET
check inv8 {
	inv1o and inv2o and inv3o and inv4o and inv5o and inv6o and inv7o implies
	(inv8 iff inv8o)
} for 4

pred inv9 {
	// Tracks not followed by junctions do not have semaphores

}
//SECRET
pred inv9o {
	all t : Track | no t.succs & Junction implies no t.signals & Semaphore
}
//SECRET
check inv9 {
	inv1o and inv2o and inv3o and inv4o and inv5o and inv6o and inv7o and inv8o implies
	(inv9 iff inv9o)
} for 4

pred inv10 {
	// Every track before a junction has a semaphore

}
//SECRET
pred inv10o {
	all j : Junction, t : succs.j | some t.signals & Semaphore
}
//SECRET
check inv10 {
	inv1o and inv2o and inv3o and inv4o and inv5o and inv6o and inv7o and inv8o and inv9o implies
	(inv10 iff inv10o)
} for 5
