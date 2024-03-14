-- equiv pair start,6
always no Trash & Trash'
-- div,1
always (all f : Trash | f not in Trash')
-- div,1
always all f : Trash | after f not in Trash
-- div,1
always (all f:Trash | after no Trash&f)
-- div,2
always all f : File | f in Trash implies after f not in Trash
-- div,1
-- equiv pair end
-- equiv pair start,3
all t : Trash | t not in File'
-- div,1
all t: Trash | after t not in File
-- div,1
all f:File | f in Trash implies after f not in File
-- div,1
-- equiv pair end
-- equiv pair start,11
all f: File | always f in Trash implies after f not in File
-- div,1
all f: File |always f in Trash implies always f' not in File
-- div,1
all f: File |eventually (f in Trash implies always f not in File)
-- div,1
all f: File |eventually (f in Trash implies File' = File - f)
-- div,1
all f: File |once (always f in Trash implies File' = File - f)
-- div,1
all f: File | always f in Trash implies always after f not in File
-- div,1
all f: File |eventually (always f in Trash implies always f not in File)
-- div,1
all f: File |eventually (always f in Trash implies File' = File - f)
-- div,1
all f: File | once always f in Trash implies always after f not in File
-- div,1
all f: File |always f in Trash implies always f' not in File and f' not in Trash
-- div,1
all f: File |always f in Trash implies always f' not in File and f' not in Trash and f' not in Protected
-- div,1
-- equiv pair end
-- equiv pair start,5
all f: File |eventually (before f in Trash implies f not in File)
-- div,1
all f:File | before f not in Trash implies after File'=File-f
-- div,1
all f: File |eventually (before f in Trash implies File = File - f)
-- div,1
all f: File |eventually (before f in Trash implies always f not in File)
-- div,1
all f: File |eventually (before f in Trash implies File' = File - f)
-- div,1
-- equiv pair end
-- equiv pair start,1
always all f:File | f not in Trash and f in Trash' implies f not in File''
-- div,1
-- equiv pair end
-- equiv pair start,1
all f: File | eventually always f in Trash implies always after f not in File
-- div,1
-- equiv pair end
