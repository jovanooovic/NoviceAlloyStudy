code sig Track {
	succs : set Track,
	signals : set Signal
}
sig Junction, Entry, Exit in Track {}

sig Signal {}
sig Semaphore, Speed extends Signal {}

// The station has at least one entry and one exit
pred inv1o {
	some Entry
	some Exit
}

// Signals belong to one track
pred inv2o {
	all s : Signal | one signals.s
}

// Exit tracks are those without successor
pred inv3o {
	all t : Track | t in Exit iff no t.succs
}

// Entry tracks are those without predecessors
pred inv4o {
	all t : Track | t in Entry iff no succs.t
}

// Junctions are the tracks with more than one predecessor
pred inv5o {
	all t : Track | t not in Junction iff lone succs.t
}

// Entry tracks must have a speed signal
pred inv6o {
	all t : Entry | some t.signals & Speed
}

// The station has no cycles
pred inv7o {
	no t : Track | t in t.^succs
}

// It should be possible to reach every exit from every entry
pred inv8o {
	all e : Entry, x : Exit | x in e.*succs
}

// Tracks not followed by junctions do not have semaphores
pred inv9o {
	all t : Track | no t.succs & Junction implies no t.signals & Semaphore
}

// Every track before a junction has a semaphore
pred inv10o {
	all j : Junction, t : succs.j | some t.signals & Semaphore
}
