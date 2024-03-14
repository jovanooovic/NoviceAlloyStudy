(~Protected & Trash)
-- div,1
(no Protected) in Trash
-- div,2
(not Protected) in Trash
-- div,1
no ((not Protected) & Trash)
-- div,1
(File-Protected) & Trash
-- div,1
all p:~(Protected) | p in Trash
-- div,1
all f : not Protected | f in Trash
-- div,2
all x : File not in Protected | x in Trash
-- div,1
all f:(File and not Protected) | f in Trash
-- div,1
all f:File | f in Trash and f not Protected
-- div,1
all f:File | f not in Protected -> f in Trash
-- div,3
all f : File | f not in Protected -> f in Trash
-- div,2
all f : File | f in Trash -> f not in Protected
-- div,2
all x : File | x not in Protected -> x in Trash
-- div,1
all f : File | f in Trash implies f not Protected
-- div,1
all f:File | (f not in Protected) -> (f in Trash)
-- div,1
some f : File | f in Trash implies f not Protected
-- div,1
all f : File | (f in Trash) -> (f not in Protected)
-- div,1
all bruh : File | bruh not in Protected -> bruh in Trash
-- div,1
all bruh : File | ((bruh not in Protected) -> (bruh in Trash))
-- div,1
all f:File | f not in Protected -> f in Trash

}

run inv5 for 3

/* A file links to at most one file. */

pred inv5{
all f:File | f not in Protected -> f in Trash
-- div,1
