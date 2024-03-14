Protected in Trash
-- div,2
Protected not in Trash
-- div,8
not Protected in Trash
-- div,1
some f : File | not f in Trash
-- div,1
all f:File | f in Protected
-- div,3
all p:Protected | p in Trash
-- div,1
not all f:Protected | f in Trash
-- div,1
not all f:Protected | f not in Trash
-- div,1
some f : Protected | not f in Trash
-- div,1
all f : File | f not in Protected implies f in Trash
-- div,2
some f:File|f in Protected implies f not in Trash
-- div,1
some f:File | f in Trash implies f not in Protected
-- div,3
all f : File | some f : Protected | f not in Trash
-- div,1
