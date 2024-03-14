-- equiv pair start,8
Protected in Trash
-- div,1
all f:Protected | f in Trash
-- div,3
all p : Protected | p in Trash
-- div,1
all f:File | f in Trash or f not in Protected
-- div,3
-- equiv pair end
-- equiv pair start,1
not Protected in Trash
-- div,1
-- equiv pair end
-- equiv pair start,5
all f:Trash | f in Protected
-- div,1
all f:File | f in Trash implies f in Protected
-- div,2
all f : File | f not in Protected implies f not in Trash
-- div,2
-- equiv pair end
-- equiv pair start,18
no (File & Trash & Protected)
-- div,2
no p:Protected | p in Trash
-- div,1
all f:Trash | f not in Protected
-- div,2
all p : Protected | not p in Trash
-- div,1
(File - Protected) & Trash = File & Trash
-- div,2
all f:File | f in Trash implies f not in Protected
-- div,7
all f:File | f in Protected implies f not in Trash
-- div,1
all f:File, p:Protected | f in Trash implies f != p
-- div,1
all f:File, p:Protected | f in Trash implies f not in Protected
-- div,1
-- equiv pair end
-- equiv pair start,5
all f:File | f not in Protected
-- div,3
all f : File | f not in Protected && (f in Trash || f in File)
-- div,1
all f:File, p:Protected | f not in Protected and f in Trash
-- div,1
-- equiv pair end
-- equiv pair start,1
all f:File | Protected - f in Trash
-- div,1
-- equiv pair end
-- equiv pair start,1
all f:File, p:Protected | f in Trash
-- div,1
-- equiv pair end
-- equiv pair start,1
some f:File | f in Trash or f not in Protected
-- div,1
-- equiv pair end
-- equiv pair start,3
some f:File | f in Trash and f not in Protected
-- div,1
some f : File | f not in Protected and f in Trash
-- div,2
-- equiv pair end
-- equiv pair start,1
some f:File | f in Trash implies f in Protected
-- div,1
-- equiv pair end
-- equiv pair start,1
some f:File | f in Trash implies f not in Protected
-- div,1
-- equiv pair end
-- equiv pair start,1
all f : File | f not in Protected and f not in Trash
-- div,1
-- equiv pair end
-- equiv pair start,1
all f:File | all p:Protected | f != p implies f in Trash
-- div,1
-- equiv pair end
-- equiv pair start,1
some f:File, p:Protected | f in Trash and p not in Trash
-- div,1
-- equiv pair end
-- equiv pair start,1
some f:File | all p:Protected | f in Trash and p not in Trash
-- div,1
-- equiv pair end
