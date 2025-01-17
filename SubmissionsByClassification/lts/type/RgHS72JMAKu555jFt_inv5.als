sig State {
        trans : Event -> State
}
sig Init in State {}
sig Event {}

pred inv5{
	{x,y: State | x.(trans.y) in Event} 
}

/*
Each event is available in at least a state.
*/

