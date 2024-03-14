sig Worker {
}

var sig Prepared in Worker {
}

var sig Committed in Prepared {
}

var sig Aborted in Worker {
}

fact init { 
	no Prepared and no Aborted
}

pred nop {
	Prepared'= Prepared
	Committed'= Committed
	Aborted'= Aborted
}

pred finish[w : Worker] {
	w not in Prepared
	Prepared'= Prepared + w
	Committed'= Committed
	Aborted'= Aborted
}

pred abort[w : Worker] {
	w not in Aborted w in Prepared implies some Aborted
	Prepared'= Prepared - w
	Committed'= Committed
	Aborted'= Aborted + w
}

pred commit[w : Worker] {
	w in Prepared-Committed
	no Aborted
	Prepared'= Prepared
	Committed'= Committed + w
	Aborted'= Aborted
}

fact transitions {
	always (
		some w : Worker | finish[w] or commit[w] or abort[w] or nop
	)
}

run {} for 1
