always (some Protected) until (Protected in Trash)
-- div,1
all f:File | f in Protected until f in Trash
-- div,7
all f : Protected | f in Trash until f not in Protected
-- div,2
always (Protected' = Protected until some Protected & Trash)
-- div,1
all f : Protected | always (f not in Trash until f in Trash)
-- div,1
all f : Protected | always (f not in Trash) until (f in Trash)
-- div,1
eventually all f:File | f in Protected until f in Trash
-- div,2
(all f:File | eventually (f in Protected until f in Trash))
-- div,1
always (all f:Protected | f in Trash releases f in Protected)
-- div,1
eventually all f : Protected | f in Trash until f not in Protected
-- div,1
eventually (all f:File | f in Protected implies f in Protected&Trash)
-- div,1
all f : Protected | f in Trash and f not in Protected until f in Protected
-- div,1
all f : Protected | (f in Trash and f in Protected) until f not in Protected
-- div,1
eventually (all f:Protected | eventually f not in Protected and f in Trash)
-- div,1
always all f: Protected | eventually f in Trash implies historically f in Protected
-- div,1
eventually all f : Protected | f in Trash and f not in Protected until f in Protected
-- div,1
