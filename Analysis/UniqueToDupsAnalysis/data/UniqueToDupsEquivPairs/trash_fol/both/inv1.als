-- equiv pair start,1
no link
-- div,1
-- equiv pair end
-- equiv pair start,4
some Trash
-- div,1
some f:File | f in Trash
-- div,2
some f:File, t:Trash | f in t
-- div,1
-- equiv pair end
-- equiv pair start,15
File in Trash
-- div,1
all f:File|f in Trash
-- div,11
not some f : File | f not in Trash
-- div,1
all f:File | one t:Trash | f in t
-- div,1
all f:File | some t:Trash | f in t
-- div,1
-- equiv pair end
-- equiv pair start,3
File not in Trash
-- div,2
(some file : File | file not in Trash)
-- div,1
-- equiv pair end
-- equiv pair start,2
no f:File | all t:Trash | f in t
-- div,1
all f:File | some t:Trash | f not in t
-- div,1
-- equiv pair end
-- equiv pair start,2
all f:File | one t:Trash | f not in t
-- div,2
-- equiv pair end
