no Protected + Trash
-- div,1
always Protected not in Trash
-- div,11
always (Protected not in Trash')
-- div,3
always always Protected not in Trash
-- div,1
all p : Protected | p not in Trash'
-- div,4
all p : Protected | always p not in Trash
-- div,2
all f:Protected | always f not in Trash
-- div,10
all p:Protected | after no p&Trash
-- div,1
all p:Protected | always p in Protected
-- div,1
all p : Protected | always p not in Trash'
-- div,1
always (all f:Protected | f not in Trash')
-- div,2
always all p : Protected | p not in Trash'
-- div,1
always (all p: Protected | always p in Protected)
-- div,1
all p : Protected | p not in Trash and p not in Trash'
-- div,1
all f: File | f in Protected implies always f not in Trash
-- div,1
all f: File | always f not in Trash since f in Protected
-- div,3
all f:File | f in Protected implies always f in Protected
-- div,1
all f: File | always (f not in Trash since f in Protected)
-- div,1
all f: File | always f' not in Trash since f in Protected
-- div,1
always all f : File | f in Protected implies f in Protected'
-- div,1
all f: File | always f not in Trash implies once f in Protected
-- div,2
all f: File | once f in Protected implies always f not in Trash
-- div,2
all p : Protected | p not in Trash' and p.*link not in Trash'
-- div,1
all p : Protected | p not in Trash' and p.^link not in Trash'
-- div,2
all f: File | always f not in Trash implies always f in Protected
-- div,1
all f: File | always(f in Protected implies always f not in Trash)
-- div,2
all f: File | eventually f in Protected implies always f not in Trash
-- div,2
all f: File | always f not in Trash implies eventually f in Protected
-- div,1
all f: File | always after f not in Trash implies once f in Protected
-- div,1
all f: File | always(once f in Protected implies always f not in Trash)
-- div,1
all f: Protected | historically f not in Trash and always f not in Trash
-- div,1
all f: File | always after f in Protected implies always f not in Trash
-- div,1
all f: File | eventually after f in Protected implies always f not in Trash
-- div,1
