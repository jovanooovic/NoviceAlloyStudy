Protected = Protected
-- div,1
Protected' = Protected
-- div,4
Protected = Protected'
-- div,1
Protected' in Protected
-- div,2
Protected in Protected'
-- div,2
always Protected = Protected
-- div,2
always Protected in Protected
-- div,2
always Protected in Protected'
-- div,17
always Protected' in Protected
-- div,4
historically Protected in Protected
-- div,1
all p: Protected | p'=p
-- div,2
always no Protected - Protected'
-- div,1
always always Protected in Protected
-- div,1
always all p: Protected | p' = p
-- div,1
all p: Protected | p' in Protected
-- div,1
always File in Protected implies File in Protected
-- div,1
always all f:Protected | f in Protected
-- div,6
all p: Protected | always p in Protected
-- div,3
all f:Protected | always f in Protected
-- div,12
always all p:Protected | p in Protected
-- div,2
always all f:Protected | f in Protected'
-- div,4
always all p:Protected | p in Protected'
-- div,3
all f:Protected | always f in Protected'
-- div,1
always all p: Protected | p' in Protected
-- div,1
all p: Protected | historically p in Protected
-- div,1
always all f: Protected | once f in Protected
-- div,1
always all f : Protected | after f in Protected
-- div,1
always all p: Protected | after p in Protected
-- div,1
(all f:Protected | always after f in Protected)
-- div,1
always (all f:File&Protected | f in Protected)
-- div,2
(all f:File&Protected | always f in Protected)
-- div,3
always all p:Protected | always p in Protected
-- div,12
always all f:Protected | always f in Protected
-- div,22
all f: File | f in Protected implies f' in Protected
-- div,1
all f:File | f in Protected implies  f in Protected'
-- div,1
always all f:Protected | always f in Protected'
-- div,3
always all p:Protected | always p in Protected'
-- div,1
always all p: Protected | historically p in Protected
-- div,1
all f : File | once f in Protected implies f in Protected
-- div,1
always all p: Protected | always (after p in Protected)
-- div,1
always (all f:File&Protected | after f in Protected)
-- div,2
all f:File&Protected | always after f in Protected
-- div,2
always all f:File | f in Protected implies f in Protected
-- div,13
all f : File | f in Protected => always f in Protected
-- div,9
always (all f:Protected | always after f in Protected)
-- div,1
always (all f:File&Protected | always f in Protected)
-- div,5
always all f : File | f not in Protected implies f not in Protected
-- div,1
all f:File | f in Protected implies always  f in Protected'
-- div,1
always all f:File | f in Protected implies f in Protected'
-- div,7
always all f: File | f in Protected implies f' in Protected
-- div,1
all p : Protected | p in Protected => always p in Protected
-- div,1
after all f : File | once f in Protected implies f in Protected
-- div,1
all p: File | once p in Protected implies always p in Protected
-- div,1
all f:File | once f in Protected implies always f in Protected
-- div,5
always (all f:File | f in Protected implies after f in Protected)
-- div,2
always (all f:File&Protected | always after f in Protected)
-- div,1
always all f:File | f in Protected implies always f in Protected
-- div,19
always (all f:File | always (f in Protected implies f in Protected))
-- div,1
all f:File | always (f in Protected implies always f in Protected)
-- div,2
always all p : Protected | once p in Protected => p in Protected
-- div,1
always all f:File | f in Protected implies always f in Protected'
-- div,5
all p: Protected | once p in Protected implies always p in Protected
-- div,1
always all p : Protected | p in Protected => always p in Protected
-- div,3
all f : File | historically f in Protected implies always f in Protected
-- div,1
always all p: File | once p in Protected implies always p in Protected
-- div,1
always all f:File | once f in Protected implies always f in Protected
-- div,5
always all f:File | f in Protected implies after always f in Protected
-- div,2
always all p: File | always (p in Protected implies after p in Protected)
-- div,1
always all p: File | always (p in Protected implies always p in Protected)
-- div,1
always all f: File | always (f in Protected implies always f in Protected)
-- div,2
always all f: File | always f in Protected implies always f in Protected
-- div,1
all p: Protected | historically p in Protected and always p in Protected
-- div,2
always all f: Protected | once f in Protected implies always f in Protected
-- div,1
always all f: File | always (eventually f in Protected implies f in Protected)
-- div,1
always all f: File | (eventually f in Protected implies always f in Protected)
-- div,1
always all p:Protected | p in Protected implies after always p in Protected
-- div,2
always all f: File | once f in Protected implies always after f in Protected
-- div,1
always all f: File | always (once f in Protected implies always f in Protected)
-- div,1
eventually all f: Protected | once f in Protected implies always f in Protected
-- div,1
always all f:File | f in Protected implies f in Protected and f in Protected'
-- div,1
always all p: File | always (once p in Protected implies always p in Protected)
-- div,1
always all f: File | always (f in Protected implies after always f in Protected)
-- div,1
always all f : Protected | eventually f in Protected implies always f in Protected
-- div,2
always all f: File | always (eventually f in Protected implies always f in Protected)
-- div,1
always all f : File | ((f in Protected implies f  in Protected) or ( f not in Protected implies f not in Protected))
-- div,1
always all f : File {
(f in Protected implies f in Protected)
(f not in Protected implies f not in Protected)
}
-- div,3
all f : File {
always (f in Protected implies f in Protected)
always (f not in Protected implies f not in Protected)
}
-- div,1
always all f:File | f in Protected implies always f in Protected and f not in Protected implies always f not in Protected
-- div,1
always all f:File | (f in Protected implies always f in Protected) and (f not in Protected implies always f not in Protected)
-- div,1
