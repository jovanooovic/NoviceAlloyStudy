always Protected
-- div,1
always all Protected
-- div,1
once in Protected always in Protected
-- div,1
all f:File |always (since f in  Protected)
-- div,1
(all f:File | always(after f in Protected)
-- div,1
always p:Protected | always p in Protected
-- div,1
always( f:Protected | always f in Protected)
-- div,1
always (f:Protected | always f in Protected)
-- div,1
all f:Protected implies always f in Protected
-- div,1
always(all f:  Protected) | always f in Protected)
-- div,1
always all f : Protected implies always f in Protected
-- div,1
all p: File | once p in Protected always p in Protected
-- div,1
all f: File | once f in Protected always f in Protected
-- div,2
all f: File | f always in Protected since f in Protected
-- div,1
all f:File | f in protected implies always (f in protected)
-- div,1
all f:File | f in Protected implies always (f in protected)
-- div,1
always all f: Protected | always f in Protected
-- div,1
all f:file | always f in Protected implies always f in Protected
-- div,1
always f:File | once f in Protected implies always f in Protected
-- div,1
all f:File |(always f in Protected) since f in  Protected implies
-- div,1
always all f: File | once f in Proteced implies always f in Protected
-- div,1
always (Protected in after Protected and after Protected in Protected)
-- div,1
all p : Protected | historically p in Proteced and always p in Protected
-- div,1
always p : Protected | historically p in Proteced and always p in Protected
-- div,2
