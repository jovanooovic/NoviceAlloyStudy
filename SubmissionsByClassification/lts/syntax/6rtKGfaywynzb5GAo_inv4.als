sig State {
        trans : Event -> State
}
sig Init in State {}
sig Event {}

pred inv4{
  	let t = {all x,y : State, some z : Event | x->z->y in trans}
	all s : State | State in Init.*(s.trans)
}

/*
All the states have the same events available.
*/

