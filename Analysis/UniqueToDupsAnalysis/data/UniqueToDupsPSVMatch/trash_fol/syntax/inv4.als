true
-- div,1
all f
-- div,4
Deleted not in Trash
-- div,1
Deleted not in Protected
-- div,1
Proctected not in Deleted
-- div,2
all f:Files | f not in Trash
-- div,1
all x: Protected | not in Trash
-- div,1
all f Protected | f not in Trash
-- div,1
all f : Proteced | f not in Trash
-- div,2
all p : Protected | f not in Trash
-- div,3
f in Protected implies f not in Trash
-- div,1
/all f : Protected | f not in Trash*/
-- div,1
f:File| f in Protected implies f not in Trash
-- div,1
all f : File | f in Protected & not f in Trash
-- div,1
some f:File | t:Trash | t -> f not in Protected
-- div,1
all f:File | f in Protected implies not in Trash
-- div,2
all f: File | f in protected => not (f in Trash)
-- div,1
all f : File | some f : protected | f not in Trash
-- div,1
some f:File | f in Trash implies F not in Protected
-- div,1
all f : File | f in protected implies f not in Trash
-- div,1
(all file : File | file in Protectec implies file not in Trash)
-- div,1
