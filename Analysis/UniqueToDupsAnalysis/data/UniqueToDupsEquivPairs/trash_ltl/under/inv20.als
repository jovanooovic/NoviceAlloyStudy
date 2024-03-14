-- equiv pair start,1
all t: Trash | t in Trash since t not in Protected
-- div,1
-- equiv pair end
-- equiv pair start,4
always (all f : Trash | f in Protected since f in Trash)
-- div,1
always all f : Trash | f not in Protected since f in Trash
-- div,3
-- equiv pair end
