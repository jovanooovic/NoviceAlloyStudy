no Trash
-- div,1
no Protected + Trash
-- div,2
no Trash + Protected
-- div,1
File = Trash - Protected
-- div,1
File = Protected - Trash
-- div,1
no Protected and no Trash
-- div,1
some Protected
no Trash
-- div,1
File = Protected
no Trash
-- div,2
Trash = File
no Protected
-- div,1
File = Trash
no Protected
-- div,1
all f : File | f not in Trash
-- div,1
all p: File |
not (p in Trash)
-- div,1
all x : Protected | no Trash
-- div,2
all p : Protected | no Trash
-- div,1
all f : File | f = Protected - Trash
-- div,4
no f: File | f in Protected and f in File
-- div,1
File = Trash + Protected
no Trash & Protected
-- div,2
all f: File | f in Protected iff f not in Trash
-- div,1
