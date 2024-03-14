open util/ordering[AustraliaMapColoring] as AM


abstract sig AustraliaMapColoring{}
sig Apanage extends AustraliaMapColoring{
color : Colors
}
enum Colors{Red,Green,Blue}


fact constraints {
all S,S? :Apanage  | 
(some S.next=S?) => not (S.color=S?.color)
and (some S.prev=S?) => not (S.color=S?.color)
and (some S.prev.prev) and not (S.color=S?.color)


}

run {} for 7
