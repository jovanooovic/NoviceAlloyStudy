always all f:Protected | historically f in Protected
-- div,17
always all p:Protected | historically p in Protected
-- div,15
always(all f : (File & Protected) | historically (f in Protected))
-- div,1
always all f:File| f in Protected implies historically f in Protected
-- div,15
always all f : Protected | f in Protected implies historically f in Protected
-- div,1
always (all f:File | f in Protected implies  (historically some (f &   Protected)))
-- div,1
