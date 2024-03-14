-- equiv pair start,66
always no Protected & Trash & Protected'
-- div,2
always all f : Trash & Protected | f not in Protected'
-- div,1
always all f : Protected & Trash | f not in Protected'
-- div,6
always(all f:Trash&Protected | after f not in Protected)
-- div,8
always all t: Trash & Protected | after t not in Protected
-- div,2
always all p: (Protected & Trash) | after p not in Protected
-- div,2
always all pt : Protected & Trash | after pt not in Protected
-- div,1
always all f:Protected | f in Trash implies f not in Protected'
-- div,7
always all f:Trash | f in Protected implies f not in Protected'
-- div,1
always(all f : (Trash & Protected) | after no(f & Protected))
-- div,1
always all f:Protected | f in Trash implies after f not in Protected
-- div,7
always all p:Protected | p in Trash implies after p not in Protected
-- div,6
always all f:File | (f in Protected & Trash) implies f not in Protected'
-- div,4
always all f : File | f in Trash & Protected implies f not in Protected'
-- div,2
always (all f:Protected |  some (f & Trash) implies no (Protected' & f) )
-- div,1
always (all f:File | f in Protected&Trash implies after (f not in Protected))
-- div,2
always all f:File | f in Protected and f in Trash implies f not in Protected'
-- div,1
always all f:File | f in Trash and f in Protected implies f not in Protected'
-- div,7
always (all f:File | f in Trash and f in Protected implies after f not in Protected)
-- div,3
always all f:File | f in Trash and f in Protected implies f in Trash and f not in Protected'
-- div,2
-- equiv pair end
