pred prop16c {
	all t : Train | always (some t.pos & Exit implies (some t.pos since some t.pos & Entry))
}
