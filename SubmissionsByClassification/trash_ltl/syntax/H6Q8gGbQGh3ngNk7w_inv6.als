var sig File {
	var link : lone File
}
var sig Trash in File {}

var sig Protected in File {}

pred inv6{
some f : File | f always in Trash
}


