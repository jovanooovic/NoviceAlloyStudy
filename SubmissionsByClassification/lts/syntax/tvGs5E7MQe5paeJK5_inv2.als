sig State {
        trans : Event -> State
}
sig Init in State {}
sig Event {}

pred inv2{
	one i : Init
}

/*
The LTS is deterministic, ie, each state has at most a transition for each event.
*/

