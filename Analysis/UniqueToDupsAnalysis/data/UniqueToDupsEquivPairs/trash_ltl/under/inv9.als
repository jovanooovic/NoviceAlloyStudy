-- equiv pair start,2
no Protected & Trash
-- div,1
historically no Protected & Trash
-- div,1
-- equiv pair end
-- equiv pair start,1
always (Protected in Protected)
-- div,1
-- equiv pair end
-- equiv pair start,1
all f: File | always(f in Protected implies f not in Trash)
-- div,1
-- equiv pair end
-- equiv pair start,1
all f: File | always f in Protected implies eventually f not in Trash
-- div,1
-- equiv pair end
