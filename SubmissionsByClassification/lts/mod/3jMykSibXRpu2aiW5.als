open util/ordering[AustraliaMapColoring] as AM


abstract sig AustraliaMapColoring{}
sig Apanage extends AustraliaMapColoring{
color : Colors
}
enum Colors{Red,Green,Blue}


fact constraints {
all S1,S2 :Apanage  | 
(some S1.next=S2) => not (S1.color=S2.color)
and (some S1.prev=S2) => not (S1.color=S2.color)
and (some S1.prev.prev) and not (S1.color=S2.color)


}

run {} for 7
