var sig File {
	var link : lone File
}
var sig Trash in File {}

var sig Protected in File {}

pred inv13{
all f:File | historically  (f in Trash) implies historically once f not in Trash)
}


