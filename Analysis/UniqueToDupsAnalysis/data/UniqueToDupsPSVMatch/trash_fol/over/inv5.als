File = Trash
-- div,1
File - Protected = Trash
-- div,2
all f:File | f in Trash
-- div,3
all f : univ - Protected | f in Trash
-- div,2
all f : univ + Protected | f in Trash
-- div,1
all f: File | one t : Trash | f in t
-- div,1
all f:File | f in Trash and f not in Protected
-- div,2
all x : File | x not in Protected and x in Trash
-- div,1
all p: File | p not in Protected and p in Trash
-- div,3
all f:File | f not in Protected and f in Trash
-- div,11
all f1:File | f1 not in Protected and f1 in Trash
-- div,1
