pred inv7c {
	all u : User | u.suggested = u.follows.follows - u.follows - u
}
