var sig File {
	var link : lone File
}
var sig Trash in File {}

var sig Protected in File {}

pred inv15{
eventually f:File | f not in Trash after f in Trash
}


