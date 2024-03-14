pred inv13c {
	all c : Course, p : Person | last in p.(c.grades) implies some p.projects & c.projects
}
