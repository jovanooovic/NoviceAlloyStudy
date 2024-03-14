-- equiv pair start,1
some Trash
-- div,1
-- equiv pair end
-- equiv pair start,4
no Protected
-- div,3
all f: File | no Protected
-- div,1
-- equiv pair end
-- equiv pair start,5
no Trash & File
-- div,2
no File & Trash
-- div,2
all f: File | f not in Trash
-- div,1
-- equiv pair end
-- equiv pair start,3
no File-Protected
-- div,2
all x: File | x in Protected
-- div,1
-- equiv pair end
-- equiv pair start,1
Trash = File.link
-- div,1
-- equiv pair end
-- equiv pair start,3
all f: Trash | f = File
-- div,1
all f:File, t:Trash | f in t
-- div,2
-- equiv pair end
