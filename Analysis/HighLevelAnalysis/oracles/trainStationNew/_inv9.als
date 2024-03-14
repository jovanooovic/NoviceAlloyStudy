pred inv9c {
	all t : Track | no t.succs & Junction implies no t.signals & Semaphore
}
