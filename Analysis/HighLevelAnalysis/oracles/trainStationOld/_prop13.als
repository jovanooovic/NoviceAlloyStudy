pred prop13c {
	all t : Train | always ((no t.pos and once some t.pos) implies always no t.pos)
}
