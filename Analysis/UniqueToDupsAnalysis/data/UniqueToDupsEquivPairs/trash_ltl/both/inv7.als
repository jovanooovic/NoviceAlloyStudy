-- equiv pair start,2
eventually File in Protected
-- div,2
-- equiv pair end
-- equiv pair start,1
all f : File | after f in Protected
-- div,1
-- equiv pair end
-- equiv pair start,2
always all f : File | f in Protected
-- div,2
-- equiv pair end
-- equiv pair start,4
always all f : File | after f in Protected
-- div,4
-- equiv pair end
-- equiv pair start,1
always all f : File | after eventually f in Protected
-- div,1
-- equiv pair end
