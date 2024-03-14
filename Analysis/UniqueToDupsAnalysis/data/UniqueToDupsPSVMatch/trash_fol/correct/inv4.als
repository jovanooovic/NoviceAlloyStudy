no Trash & Protected
-- div,7
no Protected & Trash
-- div,32
no p:Protected | p in Trash
-- div,1
all p:Protected | p not in Trash
-- div,42
all x: Protected | x not in Trash
-- div,4
all f:Trash | f not in Protected
-- div,2
all f:Protected | f not in Trash
-- div,43
all fp:Protected | fp not in Trash
-- div,2
all f : Protected | not f in Trash
-- div,1
not some f:Protected | f in Trash
-- div,1
not some p:Protected | p in Trash
-- div,1
all bruh : Protected | bruh not in Trash
-- div,2
all w : File | w in Protected implies w not in Trash
-- div,1
all f:File | f in Protected => f not in Trash
-- div,45
all f : File |f in Trash implies f not in Protected
-- div,1
all x : File | x in Protected implies x not in Trash
-- div,2
all f: Protected | no t: Trash | f in t
-- div,1
all f : File | f in Protected => not f in Trash
-- div,3
all p:Protected | all t:Trash | p!=t
-- div,1
not some f : File | f in Protected and f in Trash
-- div,1
all f : File {
always(f in Protected implies f not in Trash)
}
-- div,5
