-- equiv pair start,1
lone File
-- div,1
-- equiv pair end
-- equiv pair start,6
some Trash
-- div,6
-- equiv pair end
-- equiv pair start,1
File not in Trash
-- div,1
-- equiv pair end
-- equiv pair start,3
all f:File | f in Trash
-- div,2
all t: File | t in Trash
-- div,1
-- equiv pair end
-- equiv pair start,1
all t: File | t in Trash and t not in Protected
-- div,1
-- equiv pair end
