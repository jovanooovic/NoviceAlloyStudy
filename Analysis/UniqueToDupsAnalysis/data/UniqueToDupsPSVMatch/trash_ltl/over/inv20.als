always all f : Trash | f not in Protected
-- div,1
always all p : File | p in Trash since p not in Protected
-- div,1
always all f: File | f in Trash since f not in Protected
-- div,23
always all t: File | t in Trash since t not in Protected
-- div,1
always (all f:File | f in Trash since no (f&Protected) )
-- div,2
always all f : File | f in Trash releases f not in Protected
-- div,2
always all f : File | f in Trash triggered f not in Protected
-- div,2
always all f : Protected | f in Trash since f not in Protected
-- div,1
always (all f : Trash | f not in Protected releases f not in Trash)
-- div,1
always all f : File | f in Trash since f in File - Protected
-- div,1
always all f : File | always f in Trash since f not in Protected
-- div,1
always all f : File | f in Trash => historically f not in Protected
-- div,1
