historically Protected = Protected
-- div,1
always historically Protected = Protected
-- div,1
historically (File in Protected implies File in Protected)
-- div,1
all p:Protected | historically p in Protected
-- div,2
all f:Protected | historically f in Protected
-- div,8
historically all f:Protected | f in Protected
-- div,1
always ((some Protected) implies (historically some Protected))
-- div,1
all f : (File & Protected) | historically (f in Protected)
-- div,1
always all f:File | f in Protected implies f in Protected
-- div,1
always all f : Protected | f in Protected implies f in Protected
-- div,1
historically all f:File | f in Protected implies f in Protected
-- div,2
all f : File | f in Protected => historically f in Protected
-- div,9
all f:File | historically f in Protected implies f in Protected
-- div,1
always all f : File | f in Protected implies once f in Protected
-- div,1
historically all f:File | f in Protected' implies f in Protected
-- div,1
all f: File | once f in Protected implies historically f in Protected
-- div,2
all f: File | always (f in Protected implies historically f in Protected)
-- div,1
always all f:File | always f in Protected implies always f in Protected
-- div,1
all f : File | eventually f in Protected => historically f in Protected
-- div,3
all f: File | always once f in Protected implies historically f in Protected
-- div,1
all f: File | always (eventually f in Protected implies historically f in Protected)
-- div,1
all f: File | eventually always f in Protected implies historically f in Protected
-- div,1
