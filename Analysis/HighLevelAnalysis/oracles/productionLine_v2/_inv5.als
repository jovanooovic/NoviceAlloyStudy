pred inv5c {
	all c : Workstation | no (c.workers & Human) or no (c.workers & Robot)
}
