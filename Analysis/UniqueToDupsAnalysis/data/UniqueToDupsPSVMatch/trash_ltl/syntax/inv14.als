always Protecte & Trash not in Protected
-- div,1
always (Proteced' = Protected - Protected & Trash)
-- div,1
all f:File | f in Protected&Trash after f not in Protected
-- div,1
all f : Protected | after not in Protected since f in Trash
-- div,1
always(all f : (Trash & Protected) | after no(f & Protected)
-- div,1
all f:File | f in (Trash & Protected) after f not in Protected
-- div,1
alwyas(all f : (Trash & Protected) | after (f not in Protected))
-- div,1
always f:Protected | f in Trash implies after f not in Protected
-- div,1
always all f : File | f in Trash implies after f not in Protectede
-- div,1
always (f : Protected | f in Trash implies after f not in Protected)
-- div,1
always(all f:File | f in Protected&Trash after f in Trash-Protected)
-- div,1
always all p: Protected | p in Trash implies after f not in Protected
-- div,1
all f : File | f in Trash' implies after f not in Protected
-- div,2
always all f:File | f in Trash | f in Protected implies f not in Protected'
-- div,1
all f: File | eventually f in Protected & in Trash implies after f not in Protected
-- div,1
all f: File | eventually f in Protected and in Trash implies after f not in Protected
-- div,1
always all f:File | f in Trash and f in Protected after f in Trash and f not in Protected'
-- div,1
all f: File | onve (f in Protected & f in Trash implies always (after f in Trash and f not in Protected))
-- div,1
all f: File | (once f in Protected and f in Trash) implies always (after f in Trash and f not in Protected))
-- div,1
all f: File | eventually (once f in Protected and f in Trash) implies always (after f in Trash and f not in Protected))
-- div,2
