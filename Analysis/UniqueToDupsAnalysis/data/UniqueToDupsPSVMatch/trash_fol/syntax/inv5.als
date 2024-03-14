F = Trash
-- div,1
all f:File |
-- div,1
all f : File |
-- div,1
all x: Files |
-- div,1
Files \ Protected = Trash
-- div,1
Files - Protected = Trash
-- div,2
all File-Protected in Trash
-- div,2
all f:File, p:Protected | f in
-- div,1
all p:Unprotected | p in Trash
-- div,1
all f:Files | f not in Protected
-- div,1
all f : not Prepared | f in Trash
-- div,1
all f not in Protected | f in Trash
-- div,1
all f:not in Protected | f in Trash
-- div,1
all f: File | one t : Trash : f in t
-- div,1
all f : f not Protected | f in Trash
-- div,1
all x : not in Protected | x in Trash
-- div,2
all f : not in Protected | f in Trash
-- div,1
all F : File | f in Trash and F not in
-- div,1
all x: (Files - Protected) | x in Trash
-- div,1
all f : (not in Protected) | f in Trash
-- div,1
all f:File | f not in Protected f in Trash
-- div,1
all f:Trash | f not in Protected

/* A file links to at most one file. */
-- div,1
all f : f not in Protected implies f in Trash
-- div,1
all f : File | f not in Protected | f in Trash
-- div,1
all x : File | x not in Protected | x in Trash
-- div,2
all f : File | f not in Prepared && f in Trash
-- div,1
all (f: File and not in Protected) | f in Trash
-- div,1
all f:Files and f not in Protected | f in Trash
-- div,1
all f: Files | f not in Protected => f in Trash
-- div,1
all f : Files | f not in Protected and f in Files
-- div,1
all f:File, p:Protected | f in Trash and p not in
-- div,1
all x : File | all x not in Protected | x in Trash
-- div,1
all f:File | f not in Protected implied f in Trash
-- div,1
all f: File | f no in Protected implies f in Trahs
-- div,1
all f:File | f not in Protecred implies f in Trash
-- div,1
all f: File | f not in Protected implies f in Trahs
-- div,1
all f:Files | f not in Protected implies f in Trash
-- div,1
all f : files | f not in Protected | f not in Trash
-- div,1
all f: Files | f not in Protected implies f in Trash
-- div,1
all f:File | (f not in Protected) implies p in Trash
-- div,1
all f : File | (f not in Protected)) => (f in Trash)
-- div,1
all f : File | f not in protected implies f in Trash
-- div,4
all f : File : f not in Protected implies f in Trash
-- div,1
all f : Files | f not in Protected implies f in Trash
-- div,1
all f : Files | f in Trash implies f not in Protected
-- div,1
some f:File | p:Protected | f in Trash and p not in Trash
-- div,1
all f: File , all x: Protected (f != x) implies f in Trash
-- div,1
all f: File , all x: Protected | f != x implies f in Trash
-- div,1
all f:File, p:Protected | f not in Protected and f in trash
-- div,1
all f : Files, p : Protected | P not in Trash and f in Trash
-- div,1
all f: File , all x: Protected | (f != x) implies f in Trash
-- div,1
