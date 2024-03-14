-- equiv pair start,1
always all p : Protected | after p in Trash
-- div,1
-- equiv pair end
-- equiv pair start,8
always all f:File | f in Protected until f in Trash
-- div,8
-- equiv pair end
-- equiv pair start,1
always (Protected' = Protected until Protected in Trash)
-- div,1
-- equiv pair end
-- equiv pair start,2
always all p : Protected | p in Protected' until p in Trash
-- div,1
always (all f:Protected | f in Trash releases f in Protected and eventually f in Trash)
-- div,1
-- equiv pair end
-- equiv pair start,1
always (

Protected in Protected' until Protected in Trash
)
-- div,1
-- equiv pair end
-- equiv pair start,1
always (all f:File| f in Protected until f in Trash-Protected)
-- div,1
-- equiv pair end
-- equiv pair start,1
always (all f:Protected | eventually f not in Protected and f in Trash)
-- div,1
-- equiv pair end
