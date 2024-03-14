always all p : Trash | p in Trash since p not in Protected
-- div,1
always all f:Trash | f in Trash since f not in Protected
-- div,35
always all t: Trash | t in Trash since t not in Protected
-- div,14
always (all f:Trash | f in Trash  since  no (f & Protected) )
-- div,1
always (all f:File | f in Trash implies f in Trash since f not in Protected)
-- div,2
