var sig File {
	var link : lone File
}
var sig Trash in File {}

var sig Protected in File {}

pred inv12{
always (all f:File | eventually f in Trash implies (f not in Trash) releases (f in trash))
}


