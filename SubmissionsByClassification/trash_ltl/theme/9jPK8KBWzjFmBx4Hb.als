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

}

//SECRET
pred prop1o {
	no Trash+Protected
}

// initially there are no files, but some are immediately created
pred prop2 {

}

//SECRET
pred prop2o {
	no File and some File'
}

// there is always some file in the system
pred prop3 {

}

//SECRET
pred prop3o {
	always some File
}

// some file will eventually be sent to the trash
pred prop4 {

}

//SECRET
pred prop4o {
	eventually some Trash
}

// some file will eventually be deleted
pred prop5 {

}

//SECRET
pred prop5o {
	eventually (some f:File | f not in File')
}

// whenever a file is sent to the trash, it remains in there forever
pred prop6 {

}

//SECRET
pred prop6o {
	always Trash in Trash'
}

// some file will be protected
pred prop7 {

}

//SECRET
pred prop7o {
	eventually some Protected
}

// whenever a link exists, it will eventually be in the trash
pred prop8 {

}

//SECRET
pred prop8o {
	always (all f:link.File | eventually f in Trash)
}

// a protected file is at no time sent to the trash
pred prop9 {

}

//SECRET
pred prop9o {
	always no Protected & Trash	
}

// the protected status never changes
pred prop10 {

}

//SECRET
pred prop10o {
	always Protected = Protected'	
}

// every unprotected file becomes protected in the succeeding state
pred prop11 {

}

//SECRET
pred prop11o {
	always File-Protected in Protected'
}

// a file will eventually be sent to the trash and remain there indefinitely
pred prop12 {

}

//SECRET
pred prop12o {
	eventually (some f:Trash | always f in Trash)
}

// if a file is ever in the trash, it was once outside
pred prop13 {

}

//SECRET
pred prop13o {
	always (all f:Trash | once f not in Trash)
}

// whenever a protected file is in the trash, in the succeeding state it no longer is protected
pred prop14 {

}

//SECRET
pred prop14o {
	always (all f:Trash&Protected | f not in Protected')
}

// anytime a file exists, it will eventually be sent to the trash
pred prop15 {

}

//SECRET
pred prop15o {
	always (all f:File | eventually f in Trash)
}

// if a file is protected, it has always been so
pred prop16 {

}

//SECRET
pred prop16o {
	always (all f:Protected | historically f in Protected)
}

// when a file is sent to the trash, it is deleted in the succeeding state
pred prop17 {

}

//SECRET
pred prop17o {
	always (no Trash&File')
}

// protected files will only be deprotected if sent to the trash
pred prop18 {

}

//SECRET
pred prop18o {
	always all f : Protected | f in Trash releases f in Protected
}

// all protected files will be sent to the trash but remain protected until then
pred prop19 {

}

//SECRET
pred prop19o {
	always all f : Protected | f in Protected until f in Trash
}

// whenever a file is in the trash, it has been so since it was deprotected
pred prop20 {

}

//SECRET
pred prop20o {
	always (all f:Trash | not (f not in Trash triggered f in Protected))
}

//SECRET
abstract one sig RejectedBy {}
//SECRET
sig RejectedByOracle extends RejectedBy {}
//SECRET
sig RejectedBySolution extends RejectedBy {}

//SECRET
check prop1Ok { ((some RejectedByOracle iff (prop1 and not prop1o))) implies (prop1o iff prop1) }
//SECRET
check prop2Ok { ((some RejectedByOracle iff (prop2 and not prop2o))) implies (prop2o iff prop2) }
//SECRET
check prop3Ok { ((some RejectedByOracle iff (prop3 and not prop3o))) implies (prop3o iff prop3) }
//SECRET
check prop4Ok { ((some RejectedByOracle iff (prop4 and not prop4o))) implies (prop4o iff prop4) }
//SECRET
check prop5Ok { ((some RejectedByOracle iff (prop5 and not prop5o))) implies (prop5o iff prop5) }
//SECRET
check prop6Ok { ((some RejectedByOracle iff (prop6 and not prop6o))) implies (prop6o iff prop6) }
//SECRET
check prop7Ok { ((some RejectedByOracle iff (prop7 and not prop7o))) implies (prop7o iff prop7) }
//SECRET
check prop8Ok { ((some RejectedByOracle iff (prop8 and not prop8o))) implies (prop8o iff prop8) }
//SECRET
check prop9Ok { ((some RejectedByOracle iff (prop9 and not prop9o))) implies (prop9o iff prop9) }
//SECRET
check prop10Ok { ((some RejectedByOracle iff (prop10 and not prop10o))) implies (prop10o iff prop10) } for 3
//SECRET
check prop11Ok { ((some RejectedByOracle iff (prop11 and not prop11o))) implies (prop11o iff prop11) } for 3
//SECRET
check prop12Ok { ((some RejectedByOracle iff (prop12 and not prop12o))) implies (prop12o iff prop12) } for 3
//SECRET
check prop13Ok { ((some RejectedByOracle iff (prop13 and not prop13o))) implies (prop13o iff prop13) } for 3
//SECRET
check prop14Ok { ((some RejectedByOracle iff (prop14 and not prop14o))) implies (prop14o iff prop14) } for 3
//SECRET
check prop15Ok { ((some RejectedByOracle iff (prop15 and not prop15o))) implies (prop15o iff prop15) } for 3
//SECRET
check prop16Ok { ((some RejectedByOracle iff (prop16 and not prop16o))) implies (prop16o iff prop16) } for 3
//SECRET
check prop17Ok { ((some RejectedByOracle iff (prop17 and not prop17o))) implies (prop17o iff prop17) } for 3
//SECRET
check prop18Ok { ((some RejectedByOracle iff (prop18 and not prop18o))) implies (prop18o iff prop18) } for 3
//SECRET
check prop19Ok { ((some RejectedByOracle iff (prop19 and not prop19o))) implies (prop19o iff prop19) } for 3
//SECRET
check prop20Ok { ((some RejectedByOracle iff (prop20 and not prop20o))) implies (prop20o iff prop20) } for 3
