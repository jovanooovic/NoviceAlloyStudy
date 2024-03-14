pred prop8c {
	always (all f:link.File | eventually f in Trash)
}
