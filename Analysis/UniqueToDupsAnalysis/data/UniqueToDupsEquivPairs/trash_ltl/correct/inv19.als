-- equiv pair start,44
always all f:Protected | f in Protected until f in Trash
-- div,23
always all p:Protected | p in Protected until p in Trash
-- div,19
always (all f:File | f in Protected implies f in Protected until f in Trash)
-- div,2
-- equiv pair end
