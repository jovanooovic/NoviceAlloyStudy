no Trash & Protected
-- div,1
no Protected' & Trash
-- div,1
Protected' = Protected - Trash
-- div,1
always Protected & Trash not in Protected'
-- div,4
Protected in Trash implies Protected' not in Trash
-- div,1
always (Protected in Trash implies no Protected')
-- div,1
all f : Trash | always (after f not in Protected)
-- div,1
always (Protected in Trash implies Protected not in Trash')
-- div,1
all f : Protected & Trash | after f not in Trash
-- div,1
always (Protected in Trash implies Protected' not in Trash')
-- div,1
File in Protected&Trash  implies after File not in Protected
-- div,1
all f : File | f in Trash' implies  f not in Protected'
-- div,1
all f : Protected | f in Protected until f in Trash
-- div,1
all f : File | f in Trash implies (after f not in Protected)
-- div,1
all f : Protected | f not in Protected since f in Trash
-- div,2
all f : Protected | f in Trash since f not in Protected
-- div,1
always some f : Protected & Trash | f not in Protected'
-- div,2
always all f:File | f in Trash implies f in Protected'
-- div,1
all f : File | f in Trash' implies after f not in Protected
-- div,1
all f : (Trash & Protected) | after no (Trash & Protected)
-- div,1
always (all f : Trash' | always (after f not in Protected))
-- div,1
after (all f:Protected | f in Trash implies f not in Protected)
-- div,1
all f : Protected & Trash | always (after f not in Protected)
-- div,1
eventually some Protected & Trash => no Protected' & Trash'
-- div,2
all f : Protected | after f not in Protected since f in Trash
-- div,1
all f:File | f in Protected&Trash until f not in Protected
-- div,1
all f:File | f in Protected&Trash implies after (f in Trash)
-- div,1
always (some f : Protected | f in Trash implies f not in Protected')
-- div,1
always (all f : Protected | f in Trash implies after f not in Trash)
-- div,1
all f:File&Protected&Trash | after f in File&Trash
-- div,1
all f:File | f in Protected&Trash releases f not in Protected
-- div,1
all f: Protected | eventually f in Trash implies f' not in Protected
-- div,1
after (all f:File| f in Trash&Protected implies f not in Protected)
-- div,1
all f : File | f in Trash and f in Protected implies f not in Protected
-- div,1
always all p:Protected | p in Trash implies after p'=Protected
-- div,1
all f : Protected | eventually f in Trash => after f not in Protected
-- div,2
always all f : File | always f in Trash implies after f not in Protected
-- div,1
always some f : File | (f in Protected & Trash) implies (f not in Protected')
-- div,1
always(all f:File&Protected&Trash | after f in File&Trash)
-- div,1
all f : Protected & Trash | f in Trash' implies (after f not in Protected')
-- div,1
all f:File | f in Protected&Trash implies after (f in Trash-Protected)
-- div,1
always all f:File | f in Trash implies f in Protected' and not f in Trash'
-- div,1
always some f : Protected & Trash | (f in Protected & Trash) implies (f not in Protected')
-- div,1
all f:File | (f in Trash and f in Protected) implies (f in Trash' and f not in Protected')
-- div,1
always some f:File | (f in Trash and f in Protected) implies (f in Trash' and f not in Protected')
-- div,1
all f: File | once (f in Protected and f in Trash implies always (after f in Trash and f not in Protected))
-- div,1
