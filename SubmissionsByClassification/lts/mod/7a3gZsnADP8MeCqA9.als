open util/ordering[AustraliaMapColoring] as AM


abstract sig AustraliaMapColoring{}
sig Apanage extends AustraliaMapColoring{
color : Colors
}
enum Colors {Red,Green,Blue}


fact constraints {
all A1,A2 : Apanage  | 
(some A1.next = A2) => not (A1.color=A2.color)
and (some A1.prev=A2) => not (A1.color=A2.color)
and (some A1.prev.prev) and not (A1.color=A2.color)


}

run {} for 7
