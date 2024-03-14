all f:Protected&Trash | after f not in Protected
-- div,2
all f : Trash & Protected | after f not in Protected
-- div,4
all t: Trash & Protected | after t not in Protected
-- div,1
all p: (Protected & Trash) | after p not in Protected
-- div,1
all pt : Protected & Trash | after pt not in Protected
-- div,1
all f : (Trash & Protected) | after no (f & Protected)
-- div,1
all f : Protected | f in Trash implies after f not in Protected
-- div,1
all p:Protected | p in Trash implies after p not in Protected
-- div,2
all f:File | (f in Protected & Trash) implies f not in Protected'
-- div,1
all f:File | f in (Trash & Protected) implies f not in Protected'
-- div,2
always some (Protected & Trash) implies (Protected & Trash) not in Protected'
-- div,1
always ((some Protected & Trash) implies Protected & Trash not in Protected')
-- div,3
all f:File | f in Protected&Trash implies after (f not in Protected)
-- div,1
always some (Protected & Trash) implies no (Protected' & (Protected & Trash))
-- div,1
all f:File | ((f in Protected) and (f in Trash)) implies f not in Protected'
-- div,1
all f : File | f in Trash and f in Protected implies f not in Protected'
-- div,3
all f:Protected | always some (f & Trash) implies no (Protected' & f)
-- div,1
all f : Protected & Trash | f in Trash' implies (after f not in Protected)
-- div,1
all f:File | f in (Trash & Protected) implies f not in (Trash & Protected')
-- div,1
all f:File | (f in Trash and f in Protected) implies (f in Trash and f not in Protected')
-- div,1
