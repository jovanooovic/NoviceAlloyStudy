sig State {
        trans : Event -> State
}
sig Init in State {}
sig Event {}

pred inv7{
  all to: State | from[Init, to] => from[to, Init]
	
}


