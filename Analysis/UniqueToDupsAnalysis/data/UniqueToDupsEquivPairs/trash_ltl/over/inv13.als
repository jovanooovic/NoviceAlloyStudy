-- equiv pair start,4
some f : Trash | once f not in Trash
-- div,1
File in Trash historically File not in Trash
-- div,1
some f : File & Trash | once f not in Trash
-- div,1
always (some f : Trash | once f not in Trash)
-- div,1
-- equiv pair end
-- equiv pair start,1
all f : File | (f in Trash) releases (f not in Trash)
-- div,1
-- equiv pair end
-- equiv pair start,1
always all f:File | f in Trash implies once f in File-Trash
-- div,1
-- equiv pair end
-- equiv pair start,1
always all f : File | (f in Trash) releases (f not in Trash)
-- div,1
-- equiv pair end
-- equiv pair start,2
always all f:File | f in Trash implies before f not in Trash
-- div,2
-- equiv pair end
-- equiv pair start,1
all f: File | always (f in Trash implies before f not in Trash)
-- div,1
-- equiv pair end
