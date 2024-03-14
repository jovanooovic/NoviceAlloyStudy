no File
-- div,13
Trash = univ
-- div,1
eventually no File
-- div,1
all f:File | f=none
-- div,1
all f: File | f = Trash
-- div,2
File = Trash + Protected
no Protected
-- div,1
no Protected
all f: File | f = Trash
-- div,1
one t : Trash | all f : File | f in t
-- div,1
File=Protected+Trash
no File & Protected
-- div,1
all f : File | ((f not in Protected) and (f in Trash))
-- div,1
all f: File | f != Protected
all f: File | f = Trash
-- div,1
