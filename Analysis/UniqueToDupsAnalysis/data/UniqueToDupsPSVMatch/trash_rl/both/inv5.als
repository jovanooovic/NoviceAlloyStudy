no Protected
-- div,1
Protected in Trash
-- div,3
no Protected -> Trash
-- div,4
no Trash -> Protected
-- div,1
not Protected in Trash
-- div,5
one Protected -> Trash
-- div,1
no Trash + Protected
-- div,2
no (Protected-Trash)
-- div,3
no Trash - Protected
-- div,4
one Trash -> Protected
-- div,1
no Trash & Protected
-- div,6
no Protected&Trash
-- div,8
one Protected & Trash
-- div,1
no Protected <: Trash
-- div,1
no Protected :> Trash
-- div,1
lone Protected -> Trash
-- div,1
one Protected - Trash
-- div,2
no Trash <: Protected
-- div,1
one Trash - Protected
-- div,2
some Protected -> Trash
-- div,1
some Trash -> Protected
-- div,1
no Trash :> Protected
-- div,1
lone Trash -> Protected
-- div,1
lone Trash - Protected
-- div,1
some Protected - Trash
-- div,1
some Trash - Protected
-- div,2
Trash = Protected - File
-- div,1
Trash in File - Protected
-- div,3
Trash = Trash - Protected
-- div,2
File & Protected in Trash
-- div,2
Trash = Protected - Trash
-- div,1
Protected in File & Trash
-- div,1
not Protected & File in Trash
-- div,2
no Trash - (File - Protected)
-- div,1
(File - Protected) & Trash = Trash
-- div,2
all p : Protected | no Trash
-- div,1
all f:File | lone f.link
-- div,1
all p: Protected | p not in Trash
-- div,2
all t: Trash | t not in Protected
-- div,2
all f:Protected | not f in Trash
-- div,1
all p:Protected | not p in Trash
-- div,1
all f:Protected | no f&Trash
-- div,4
not some f:Protected | f not in Trash
-- div,1
no (Protected & Trash) and File.link  in Trash
-- div,1
all f : File | f in Protected implies f in Trash
-- div,1
all f : File | f in Trash => f !in Protected
-- div,2
all f:File | f in Protected => not f in Trash
-- div,1
all f:File | all p:Protected | (f-p) in Trash
-- div,3
