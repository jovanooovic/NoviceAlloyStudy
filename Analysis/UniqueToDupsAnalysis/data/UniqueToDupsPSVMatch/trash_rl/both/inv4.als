Trash = File
-- div,1
Protected = Trash
-- div,1
Protected in Trash
-- div,3
Protected != Trash
-- div,1
Protected not in Trash
-- div,28
Trash not in Protected
-- div,1
not Protected in Trash
-- div,7
File = Protected + Trash
-- div,2
no f: Protected | not f in Trash
-- div,1
all f : File | f = Protected :> Trash
-- div,1
all f : File | f = Protected <: Trash
-- div,1
all f : File | Protected in f => f not in Trash
-- div,1
some f : File | f in Protected implies f not in Trash
-- div,1
