sig State {
        trans : Event -> State
}
sig Init in State {}
sig Event {}

pred inv5{
	all x : State | State in x.trans
}
/*
Each event is available in at least a state.
*/

