pred inv10c {
	all c : Component, p : c.parts | p.workstation in ^succ.(c.workstation)
}
