-- equiv pair start,5
no Protected + Trash
-- div,4
all f:File | f not in Trash and f not in Protected
-- div,1
-- equiv pair end
-- equiv pair start,3
all t: Trash | t = none
-- div,1
all f:File | f not in Trash
-- div,1
all f:File | all t:Trash | f!=t
-- div,1
-- equiv pair end
-- equiv pair start,1
all f : Protected | f not in File
-- div,1
-- equiv pair end
-- equiv pair start,10
all f:File | f in Protected and f not in Trash
-- div,10
-- equiv pair end
-- equiv pair start,1
all f : File | f not in Protected and f in Trash
-- div,1
-- equiv pair end
