sig State {
        trans : Event -> State
}
sig Init in State {}
sig Event {}

pred inv1{
	all e : Event | trans.e.trans
}

/*
There is a single initial state.
*/

