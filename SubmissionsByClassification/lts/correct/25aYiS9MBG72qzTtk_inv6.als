sig State {
        trans : Event -> State
}
sig Init in State {}
sig Event {}

pred inv6 {
State.(trans.State) = Event
}

pred inv6c {
	State.trans.State = Event
}

check correct { inv6 <=> inv6c}
pred under { inv6 and !inv6c}
pred over { !inv6 and inv6c}
run over 
run under 

