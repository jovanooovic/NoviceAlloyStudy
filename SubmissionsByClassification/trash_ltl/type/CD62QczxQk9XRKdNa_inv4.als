var sig File {
	var link : lone File
}
var sig Trash in File {}

var sig Protected in File {}

pred inv4{
all f:File | eventually some (f.link:> File).Trash

}


