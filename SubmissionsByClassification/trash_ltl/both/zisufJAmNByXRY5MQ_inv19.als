var sig File {
	var link : lone File
}
var sig Trash in File {}

var sig Protected in File {}

pred inv19 {
always (Protected' = Protected until some Protected & Trash)
}

pred inv19c {
	always all f : Protected | f in Protected until f in Trash
}

check correct { inv19 <=> inv19c}
pred under { inv19 and !inv19c}
pred over { !inv19 and inv19c}
run over 
run under 


