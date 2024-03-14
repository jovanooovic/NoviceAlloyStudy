

abstract sig Status {}
one sig Unissued, Issued, Cancelled extends Status {}

sig Card {
	var status : one Status
}

sig Client {
	var cards : set Card
}



assert NoUnissuedCards {
	

}

assert NoSharedCards {
	

}



fact Init {

}




check NoUnissuedCards
check NoSharedCards


pred emit [c : Card, a : Client] {

}


pred cancel [c : Card] {

}

pred nop {
	status' = status
	cards' = cards
}

fact Traces {
	always (nop or some c : Card | cancel[c] or some a : Client | emit[c,a])
}


run Exemplo {

}
