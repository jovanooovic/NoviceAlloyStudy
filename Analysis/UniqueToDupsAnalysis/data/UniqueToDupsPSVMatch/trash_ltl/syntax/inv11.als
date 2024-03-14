all not File & Protected
-- div,1
all not (File & Protected)
-- div,1
after (all f : (File-Trash) |
-- div,1
f in File after f in Protected
-- div,1
all File after File in Protected
-- div,1
all f:File | f in File after f in Protected
-- div,1
all f : File-Protected | after f in Proteced
-- div,1
after (f:not in Protected | f in Protected')
-- div,1
always ( ((File - Protected) in after Protected))
-- div,1
all f:File | f not in Protected after f in Protected
-- div,1
always all up:File-Protected implies up' in Protected
-- div,1
all a : File | f not in Protected after f in Protected
-- div,1
all f : File | f not in Protected after f in Protected
-- div,3
all f : File - Protected | always (next f in Protected)
-- div,2
all f : File | f not in Protected after (f in Protected)
-- div,1
all f : File | (f not in Protected) after (f in Protected)
-- div,1
all a : File | (a not in Protected) after (f in Protected)
-- div,1
always f:File | f not in Protected implies f in Protected'
-- div,1
all a : File | (a not in Protected) after (a in Protected)
-- div,1
always all f:File | f not in Protected after f in Protected
-- div,1
always f:File | f not in Protected implies after f in Protected
-- div,2
eventually all f:File | f not in Protected after f in Protected
-- div,6
always f:File | f not in Protected implies Protected' = Protected + f
-- div,1
