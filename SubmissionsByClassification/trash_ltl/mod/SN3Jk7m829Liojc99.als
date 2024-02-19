var sig File {
	var link : lone File
}
var sig Trash in File {}
var sig Protected in File {}
pred prop20 {
 	always (all f:File | f in Trash since  (f not in Protected) )
}

var sig File {
	var link : lone File
}
var sig Trash in File {}
var sig Protected in File {}

pred prop1 {
  historically (no Trash and no Protected)
	
}

pred prop2 {
	no File  and after some File
}

pred prop3 {
	always some File
}

pred prop4 {
 	eventually some  Trash
}

pred prop5 {

}

pred prop6 {
 	always (all f:Trash | after f in Trash)
}

pred prop7 {
	 eventually some Protected
}

pred prop8 {
	
  	
}

pred prop9 {
	always no (Protected & Trash)
}

pred prop10 {
	always Protected' = Protected
}

pred prop11 {
 	always (File-Protected) in Protected'

}

pred prop12 {

}

pred prop13 {
	all f:File |  (f in Trash) implies  once (f not in Trash)
}

pred prop14 {
	always (all f:Protected |  some (f & Trash) implies no (Protected' & f) )
}

pred prop15 {
	always (all f:File | eventually f in Trash  )
}

pred prop16 {

}

pred prop17 {
	always (all f:File | f in Trash implies after  f not in File)
}

pred prop18 {
 	always (all f:Protected | after f not in Protected implies f in Trash)
}

pred prop19 {
	always ( all f:Protected  | f in Protected until  f in Trash )
}

pred prop20 {
 	always (all f:File | f in Trash since  (f not in Protected) )
}
