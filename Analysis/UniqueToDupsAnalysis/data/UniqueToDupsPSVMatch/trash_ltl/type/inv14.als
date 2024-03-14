always all f:File | f in Trash and Protected implies f not in Protected'
-- div,3
always all f:File | (f in Trash and Protected) implies f not in Protected'
-- div,1
all f: File | eventually f in Protected & f in Trash implies after f not in Protected
-- div,1
all f: File | eventually f in Protected & f in Trash implies after f in Trash and f not in Protected
-- div,1
all f: File | once (f in Protected & f in Trash implies always (after f in Trash and f not in Protected))
-- div,1
