sig State {
        trans : Event -> State
}
sig Init in State {}
sig Event {}

pred inv5{
	all s : State | s.trans = State.trasn
}

/*
Each event is available in at least a state.
*/

