sig State {
        trans : Event -> State
}
sig Init in State {}
sig Event {}

pred inv1{
	let t = trans | iden in (trans.trans)
}

/*
There is a single initial state.
*/

