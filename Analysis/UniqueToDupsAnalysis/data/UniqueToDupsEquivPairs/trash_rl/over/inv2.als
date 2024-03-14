-- equiv pair start,15
no File
-- div,13
eventually no File
-- div,1
all f:File | f=none
-- div,1
-- equiv pair end
-- equiv pair start,1
Trash = univ
-- div,1
-- equiv pair end
-- equiv pair start,2
all f: File | f = Trash
-- div,2
-- equiv pair end
-- equiv pair start,2
no Protected
all f: File | f = Trash
-- div,1
all f: File | f != Protected
all f: File | f = Trash
-- div,1
-- equiv pair end
-- equiv pair start,3
File = Trash + Protected
no Protected
-- div,1
File=Protected+Trash
no File & Protected
-- div,1
all f : File | ((f not in Protected) and (f in Trash))
-- div,1
-- equiv pair end
-- equiv pair start,1
one t : Trash | all f : File | f in t
-- div,1
-- equiv pair end
