File
-- div,1
not Protected
-- div,3
File & Trash
-- div,1
File & Protected
-- div,2
no Trash.Protected
-- div,1
Protected & Trash
-- div,3
Trash - Protected
-- div,1
Protected :> Trash
-- div,1
no Protected = Trash
-- div,3
not Protected & Trash
-- div,4
no Protected in Trash
-- div,10
(no Protected)& Trash
-- div,1
(no Protected) & Trash
-- div,1
(no Protected) = Trash
-- div,1
(not Protected)& Trash
-- div,2
Protected.Trash in iden
-- div,1
(no Protected) in Trash
-- div,6
(not Protected) & Trash
-- div,2
Trash = (File in Trash)
-- div,1
File.Protected in Trash
-- div,2
(not Protected) in Trash
-- div,3
File = Trash & ^Protected
-- div,1
File -> Protected & Trash
-- div,1
no File.Protected in Trash
-- div,1
no Protected & File = Trash
-- div,1
always Trash&(not Protected)
-- div,1
File - Protected & Trash
-- div,1
all f : File | no f.Protected
-- div,1
all p: !Protected | p in Trash
-- div,1
all p: ~Protected | p in Trash
-- div,1
all f:Protected | no f in Trash
-- div,1
File and not Protected in Trash
-- div,1
(File not in Protected) & Trash
-- div,1
always (not Protected) in Trash
-- div,1
all np: File-Protected| np&Trash
-- div,1
all f:Protected | not f -> Trash
-- div,1
all t: Protected | t in t.^Trash
-- div,1
all f:Protected | none f in Trash
-- div,1
all p : not Protected | p in Trash
-- div,1
all f:Protected | always (not f)&Trash
-- div,1
all f:File | no (not Protected) & Trash
-- div,1
all f: File not in Protected| f in Trash
-- div,1
all f:File | f not in Protected -> f in Trash
-- div,1
all f: File| f in Protected -> f not in Trash
-- div,1
all f : File | f in Trash & f not in Protected
-- div,1
all f:File | f not Protected implies f in Trash
-- div,2
all f: File and f not in Protected | f in Trash
-- div,1
all f:File | f not in Protected implies f in Trash

File & Protected
-- div,1
all f:File | f not in Protected implies f in Trash

no Protected = Trash
-- div,1
