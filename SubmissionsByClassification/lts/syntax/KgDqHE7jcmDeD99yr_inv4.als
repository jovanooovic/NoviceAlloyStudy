sig State {
        trans : Event -> State
}
sig Init in State {}
sig Event {}

pred inv4{
 						
   	all s:State-Init |some e:Event | no (Init& tran^.(e->s))
}
 
/*
All the states have the same events available.
*/

