var sig File {
	var link : lone File
}
var sig Trash in File {}

var sig Protected in File {}

pred inv6{
all f: File | some f in Trash implies always f in Trash
}


