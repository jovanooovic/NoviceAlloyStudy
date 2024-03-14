
var sig File {
	var link : lone File
}
var sig Trash in File {}
var sig Protected in File {}


pred prop1 {
	no (Trash + Protected)
}


pred prop2 {
	no File and some File'
}


pred prop3 {
	always some File
}


pred prop4 {
	eventually some Trash
}


pred prop5 {
  
}


pred prop6 {
	always all f : Trash | always f in Trash
}


pred prop7 {
	eventually some Protected
}


pred prop8 {
	always all f : link.File | eventually f in Trash 
}


pred prop9 {
	always no (Protected & Trash)
}


pred prop10 {
	always Protected' = Protected
}


pred prop11 {
	always (File - Protected) in Protected'
}


pred prop12 {
	}


pred prop13 {
	always all f : Trash | once f not in Trash
}


pred prop14 {
    always no Protected & Trash & Protected'
}


pred prop15 {
	always all f : File | eventually f in Trash
}


pred prop16 {
	always all f : Protected | historically f in Protected
}


pred prop17 {
    always no File' & File & Trash 
}


pred prop18 {
	all f : Protected | always (eventually f in Trash => f not in Protected)
}


pred prop19 {
	always all f : Protected | f in Protected until f in Trash
}


pred prop20 {
	always all f : Trash | f in Trash since f not in Protected
}
