no Trash & Protected
-- div,13
no Protected&Trash
-- div,87
Protected & Trash = none
-- div,3
Protected in File-Trash
-- div,2
Protected - Trash = Protected
-- div,2
no t: Trash | t in Protected
-- div,2
no p: Protected| p in Trash
-- div,5
no f:Protected | f in Trash
-- div,2
all p: Protected | p !in Trash
-- div,6
all x : Protected | x not in Trash
-- div,2
all f:Protected | f not in Trash
-- div,12
all p: Protected |
not (p in Trash)
-- div,4
all f: Protected | not f in Trash
-- div,1
not some f:Protected | f in Trash
-- div,3
all pf: Protected | no pf&Trash
-- div,1
no f: File | f in Protected and f in Trash
-- div,1
all u : univ | u in Protected implies u not in Trash
-- div,2
all f:File | f in Protected => f not in Trash
-- div,9
all u : File | u in Protected implies u not in Trash
-- div,1
all f:File | f in Protected => not f in Trash
-- div,1
all p : Protected |
p in Protected implies !(p in Trash)
-- div,2
all p : Protected | p not in Trash


no Protected & Trash
-- div,2
