-- equiv pair start,6
always File' = File - Trash
-- div,3
always File' = File - File & Trash
-- div,3
-- equiv pair end
-- equiv pair start,2
always all t: Trash | after no t
-- div,1
always all f : File | f in Trash implies f not in File
-- div,1
-- equiv pair end
-- equiv pair start,1
always (Trash&Trash' not in File')
-- div,1
-- equiv pair end
-- equiv pair start,1
always (all f : Trash | File' = File - f)
-- div,1
-- equiv pair end
-- equiv pair start,1
always (all f : File | after f not in File)
-- div,1
-- equiv pair end
-- equiv pair start,1
always all f:File | eventually f in Trash implies after f not in File
-- div,1
-- equiv pair end
