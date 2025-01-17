// Model of a train station

sig Track {
	prox : set Track,
	signal : lone Signal
}
sig Junction extends Track {}
sig Entry, Exit in Track {}

sig Signal {}
var sig Green in Signal {}

sig Train {
	var pos : lone Track
}

fact Layout {
	// A track is a junction iff it has more than one successor or more than one predecessor
	all t : Track | t not in Junction iff (lone t.prox and lone prox.t)
	// No cycles
	no t : Track | t in t.^prox
	// Signals belong to one and only one track
	all s : Signal | one signal.s
	// All tracks before junctions have signals
	all j : Junction, t : prox.j | some t.signal
	// Entry tracks are those without predecessors and exit tracks are those without no successors
	all t : Track | t in Entry iff no prox.t
	all t : Track | t in Exit iff no t.prox
}


pred prop1 {
	// Intially all signals are red
	no s:Green| s in Signal 
  	
}


pred prop2 {
	// Every signal will eventually become green
	
  	all s:Signal | eventually s in Green
}


pred prop3 {
	// Trains never move
	always all t:Train | t.pos' = t.pos
}


pred prop4 {
	// There are no collisions between trains
	always all disj t1,t2:Train | no (t1.pos & t2.pos ) 
}


pred prop5 {
	// A train inside the station can only move to one of the next tracks (or exit the station if it is in an exit track)
	always all t:Train |t.pos in Entry  implies some t.pos.prox in  
}


pred prop6 {
	
	always (all s:Signal | always (s in Green) implies eventually (s not in Green ) or 
			 			always s not in Green implies  eventually (s in  Green) )
}

pred prop7 {
	// All trains inside the station will eventually leave the station
	
}


pred prop8 {
	// A train at a track with a red signal can only move after the signal becomes green

}


pred prop9 {
	// All trains will eventually enter the station in entry tracks
	
}


pred prop10 {
	// Is is always the case that at most one signal before a junction can be green

}


pred prop11 {
	// It is always the case that trains inside the station where previously at a an entry track

}


pred prop12 {
	// A train positioned in a track previously passed through all tracks that connect it to an entry track

}


pred prop13 {
	// Trains that left the station never return

}


pred prop14 {
	// Immediately after a train leaves a track with a green signal the signal turns red

}


pred prop15 {
	// Trains cannot remain forever stopped in same position

}


pred prop16 {
	// A train in an exit track was always inside the station since it arrived at an entry track

}


pred prop17 {
	// The first train to be inside the station will be the first to arrive at an exit track

}


pred prop18 {
	//  When several trains are trying to enter a junction the first that arrived will have priority

}
