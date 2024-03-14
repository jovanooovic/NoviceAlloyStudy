pred inv8c {
	all u : User, p : u.sees & Ad | p in u.(follows+suggested).posts
}
