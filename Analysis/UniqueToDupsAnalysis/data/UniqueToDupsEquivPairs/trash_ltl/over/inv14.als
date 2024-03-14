-- equiv pair start,1
always Protected & Trash not in Protected
-- div,1
-- equiv pair end
-- equiv pair start,2
always (Protected' = Protected - Protected & Trash)
-- div,2
-- equiv pair end
-- equiv pair start,1
always (Protected' in Protected - (Protected & Trash))
-- div,1
-- equiv pair end
-- equiv pair start,3
always all f:File | f in Trash implies f not in Protected'
-- div,1
always (all f:File | f in Trash implies after f not in Protected)
-- div,2
-- equiv pair end
-- equiv pair start,1
always (all f : Trash | always (after f not in Protected))
-- div,1
-- equiv pair end
-- equiv pair start,1
always all f:Trash | f in Protected and f not in Protected'
-- div,1
-- equiv pair end
-- equiv pair start,2
always(all f:File | f in Protected&Trash implies after (f in Trash-Protected))
-- div,1
always all f:File | (f in Trash and f in Protected) implies (f in Trash' and f not in Protected')
-- div,1
-- equiv pair end
