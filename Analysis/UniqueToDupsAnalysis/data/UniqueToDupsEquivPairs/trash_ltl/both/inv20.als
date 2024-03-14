-- equiv pair start,1
always all p: Protected | always p in Trash
-- div,1
-- equiv pair end
-- equiv pair start,2
all f : File | f in Trash since f not in Protected
-- div,2
-- equiv pair end
-- equiv pair start,3
always all t: File | t in Trash since t in Protected
-- div,1
always all f : File | f in Trash since f in Protected
-- div,2
-- equiv pair end
-- equiv pair start,2
always all f : Trash | f in Trash since f in Protected
-- div,1
always all t : Trash | (t in Trash) since (t in Protected)
-- div,1
-- equiv pair end
-- equiv pair start,1
always all f : File | f not in Protected until f in Trash
-- div,1
-- equiv pair end
-- equiv pair start,1
always all t: Trash | t in Protected since t in Protected
-- div,1
-- equiv pair end
-- equiv pair start,6
always all f : File | f not in Protected since f in Trash
-- div,4
always all t: File | t not in Protected since t in Trash
-- div,1
always (all f:File | no (f&Protected) since  f in Trash)
-- div,1
-- equiv pair end
-- equiv pair start,2
always all f:File | f in Trash implies once f in Protected
-- div,1
always all t: Trash | t not in Protected since t in Protected
-- div,1
-- equiv pair end
-- equiv pair start,1
always some f : File | f in Trash since f not in Protected
-- div,1
-- equiv pair end
-- equiv pair start,1
always some f : File | f not in Protected since f in Trash
-- div,1
-- equiv pair end
-- equiv pair start,3
always all f:File | f not in Protected triggered f in Trash
-- div,3
-- equiv pair end
-- equiv pair start,1
always (all f : Trash | f in Protected releases f in Trash)
-- div,1
-- equiv pair end
-- equiv pair start,1
always (all f : Trash | f in Protected since f not in Trash)
-- div,1
-- equiv pair end
-- equiv pair start,3
always all t: File | t not in Protected since t in Protected
-- div,3
-- equiv pair end
-- equiv pair start,1
always (all f:Protected | f in Trash releases f in Protected)
-- div,1
-- equiv pair end
-- equiv pair start,1
always all f : Protected | f not in Protected since f in Trash
-- div,1
-- equiv pair end
-- equiv pair start,1
always (all f:File | f in Trash since  (f not in Protected') )
-- div,1
-- equiv pair end
-- equiv pair start,2
always (all f:Trash | f not in Protected triggered f in Trash)
-- div,2
-- equiv pair end
-- equiv pair start,1
always some f : Protected | f not in Protected since f in Trash
-- div,1
-- equiv pair end
-- equiv pair start,2
always all f : File | always f not in Protected since f in Trash
-- div,2
-- equiv pair end
-- equiv pair start,1
always all f : Trash | once f in Protected && f not in Protected'
-- div,1
-- equiv pair end
-- equiv pair start,1
always all f : File | always f not in Protected since once f in Trash
-- div,1
-- equiv pair end
