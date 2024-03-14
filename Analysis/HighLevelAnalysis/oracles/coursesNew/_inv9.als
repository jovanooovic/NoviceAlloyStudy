pred inv9c {
	all p : Person | no (p.teaches.~teaches - p) & p.teaches.~enrolled
}
