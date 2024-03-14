szd
-- div,1
always all f : Trash | since f not in Protected
-- div,1
always (all f : Trash | since f not in Protected)
-- div,1
always f : Trash | f in Trash since f not in Protected
-- div,1
always (f : Trash | f in Trash since f not in Protected)
-- div,2
always all t : Trash | f in Trash since f not in Protected
-- div,1
always (all f:File | f in Trash  since  fnot in  Protected)
-- div,1
always (all f : Trash | f in Protected realeases f in Trash)
-- div,1
always (all f:File | f in Trash  since  fnot in  Protected) )
-- div,1
always (all f :  Trash | f in Trash since f not in Protected)s
-- div,1
always all f : Trash | once p in Protected && p not in Protected'
-- div,1
always (all f:File | f in Trash implies since  (f not in Protected) )
-- div,1
