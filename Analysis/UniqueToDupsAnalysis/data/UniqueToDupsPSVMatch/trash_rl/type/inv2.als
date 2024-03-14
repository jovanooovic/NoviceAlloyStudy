}


check inv2Ok {inv2 iff inv2o
}

pred inv2{

}


check inv2Ok {inv2 iff inv2o} for 4

pred inv2o{
File in Trash
-- div,2
Trash.File
-- div,1
File.Trash
-- div,1
no Trash.File
-- div,1
File->Trash
-- div,1
no File.Trash
-- div,1
File - Trash
-- div,1
Trash + File
-- div,1
File & Trash
-- div,2
no File in Trash
-- div,1
no (File in Trash)
-- div,1
all f:File |f.Trash
-- div,1
no File not in Trash
-- div,2
all f: File | f.Trash
-- div,1
all f : File | f.Trash
-- div,3
all f: File | f => f in Trash
-- div,1
all f: File | f = Trash and no f = Protected
-- div,2
