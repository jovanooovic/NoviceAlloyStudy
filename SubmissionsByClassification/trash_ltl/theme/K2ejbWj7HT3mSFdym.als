/**
 * Linear temporal logic revision exercises based on a simple model of a 
 * file system trash can.
 * 
 * Solve the following exercises using Electrum's temporal logic, which
 * extends first-order relational logic with:
 *	- unary future operators after, always and eventually
 *	- binary future operators until and releases
 *	- unary past operators before, historically and once
 *	- binary past operators since and triggered
 *  - primed relational expression e' 
 **/
var sig File {
	var link : lone File
}
var sig Trash in File {}
var sig Protected in File {}

// initially the trash is empty and there are no protected file
pred prop1 {
	no Trash
 	no Protected
}

// initially there are no files, but some are immediately created
pred prop2 {
	no File
  	some File'
}

// there is always some file in the system
pred prop3 {
	always some File
}

// some file will eventually be sent to the trash
pred prop4 {
	eventually some Trash
}

// some file will eventually be deleted
pred prop5 {
	eventually File not in File'
}

// whenever a file is sent to the trash, it remains in there forever
pred prop6 {
	always Trash in Trash'
}

// some file will be protected
pred prop7 {
	eventually some Protected
}

// whenever a link exists, it will eventually be in the trash
pred prop8 {
	always (all f: link.File | eventually f in Trash)
}

// a protected file is at no time sent to the trash
pred prop9 {
	always no Protected & Trash
}

// the protected status never changes
pred prop10 {
	always Protected = Protected'
}

// every unprotected file becomes protected in the succeeding state
pred prop11 {
	always (File - Protected) in Protected'
}

// a file will eventually be sent to the trash and remain there indefinitely
pred prop12 {
	eventually (some f: Trash | always f in Trash)
}

// if a file is ever in the trash, it was once outside
pred prop13 {
	always (all f: Trash | once f not in Trash)
}

// whenever a protected file is in the trash, in the succeeding state it no longer is protected
pred prop14 {
	always (all f: Protected | f in Trash implies f not in Protected')
}

// anytime a file exists, it will eventually be sent to the trash
pred prop15 {
	always (all f: File | eventually f in Trash)
}

// if a file is protected, it has always been so
pred prop16 {
	always (all f: Protected | historically f in Protected)
}

// when a file is sent to the trash, it is deleted in the succeeding state
pred prop17 {
	always (all f: Trash | after f not in File)
}

// protected files will only be deprotected if sent to the trash
pred prop18 {
	
}

// all protected files will be sent to the trash but remain protected until then
pred prop19 {
	always (
      	all p: Protected | p in Protected until p in Trash
    )
}

// whenever a file is in the trash, it has been so since it was deprotected
pred prop20 {
	always (
      	all f: Trash | f in Trash since f not in Protected
    )
}