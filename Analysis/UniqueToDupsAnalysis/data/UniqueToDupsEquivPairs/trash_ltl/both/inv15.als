-- equiv pair start,11
eventually File in Trash
-- div,4
some File implies (eventually File in Trash)
-- div,2
eventually all f:File | f in Trash
-- div,4
eventually all f:File | f not in Trash implies f in Trash
-- div,1
-- equiv pair end
-- equiv pair start,1
eventually some File & Trash
-- div,1
-- equiv pair end
-- equiv pair start,8
always eventually File in Trash
-- div,6
always (some File implies (eventually File in Trash))
-- div,1
always eventually all f : File | f in Trash
-- div,1
-- equiv pair end
-- equiv pair start,1
some f : File | eventually f in Trash
-- div,1
-- equiv pair end
-- equiv pair start,2
always some f : File | eventually f in Trash
-- div,2
-- equiv pair end
-- equiv pair start,1
always (no File & Trash => eventually some File & Trash)
-- div,1
-- equiv pair end
-- equiv pair start,1
eventually all f:File | f not in Trash implies f in Trash'
-- div,1
-- equiv pair end
