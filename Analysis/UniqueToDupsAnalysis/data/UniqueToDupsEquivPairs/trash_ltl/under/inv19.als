-- equiv pair start,4
always all p : Protected | eventually p in Trash
-- div,1
always all f: (Protected - Trash) | eventually f in Trash
-- div,1
always all f:Protected | f in Protected until eventually f in Trash
-- div,1
always all p : Protected | eventually p in Trash && (always p not in Trash => p in Protected)
-- div,1
-- equiv pair end
-- equiv pair start,7
all f:Protected | f in Protected until f in Trash
-- div,5
all p:Protected | p in Protected until p in Trash
-- div,2
-- equiv pair end
-- equiv pair start,4
all f : Protected | f not in Trash until f in Trash
-- div,2
all f : Protected | eventually f not in Trash until f in Trash
-- div,1
(all f:File&Protected | eventually (f in Protected until f in Trash))
-- div,1
-- equiv pair end
-- equiv pair start,1
eventually all p:Protected | p in Protected until p in Trash
-- div,1
-- equiv pair end
-- equiv pair start,8
always (all f : Protected | f in Trash until f in Protected)
-- div,2
all f : Protected | f in Trash implies historically f in Protected
-- div,1
eventually all f : Protected | f in Trash until f in Protected
-- div,1
all f : Protected | (f in Trash and f not in Protected) until f in Protected
-- div,1
all f : Protected | eventually f in Trash implies historically f in Protected
-- div,1
eventually (all f : Protected | f in Trash implies historically f in Protected)
-- div,1
eventually (all f : Protected | eventually f in Trash implies historically f in Protected)
-- div,1
-- equiv pair end
-- equiv pair start,1
always all p: Protected | eventually p in Protected until p in Trash
-- div,1
-- equiv pair end
