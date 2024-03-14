-- equiv pair start,1
Trash = File
-- div,1
-- equiv pair end
-- equiv pair start,1
Protected = Trash
-- div,1
-- equiv pair end
-- equiv pair start,1
Protected != Trash
-- div,1
-- equiv pair end
-- equiv pair start,4
Protected in Trash
-- div,3
no f: Protected | not f in Trash
-- div,1
-- equiv pair end
-- equiv pair start,35
Protected not in Trash
-- div,28
not Protected in Trash
-- div,7
-- equiv pair end
-- equiv pair start,1
Trash not in Protected
-- div,1
-- equiv pair end
-- equiv pair start,2
File = Protected + Trash
-- div,2
-- equiv pair end
-- equiv pair start,2
all f : File | f = Protected :> Trash
-- div,1
all f : File | f = Protected <: Trash
-- div,1
-- equiv pair end
-- equiv pair start,1
all f : File | Protected in f => f not in Trash
-- div,1
-- equiv pair end
-- equiv pair start,1
some f : File | f in Protected implies f not in Trash
-- div,1
-- equiv pair end
