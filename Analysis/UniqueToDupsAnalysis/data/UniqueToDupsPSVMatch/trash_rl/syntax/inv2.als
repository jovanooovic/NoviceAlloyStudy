}

/* Some file is deleted. */

pred delete [f : File]{
not (f in trash)
Trash' = Trash + f
File' = File
-- div,1
Trash =
-- div,1
no Files
-- div,1
all Trash
-- div,5
all delete
-- div,1
no f: File
-- div,1
no Protectd
-- div,1
all in Trash
-- div,1
file in Trash
-- div,2
Trash - Files
-- div,1
Trash & Files
-- div,1
Rile in Trash
-- div,1
all File.Trash
-- div,1
all f in Trash
-- div,1
Files in Trash
-- div,2
all f : File |
-- div,1
all Trash.File
-- div,1
all x in Trash
-- div,1
no Files-Trash
-- div,1
no Files - Trash
-- div,1
no Trash & Files
-- div,1
all File in Trash
-- div,2
all F:File in Trash
-- div,2
all f:File in Trash
-- div,1
all f in File: f.Trash
-- div,1
all F:File | f in Trash
-- div,1
all f in File: f -> Trash
-- div,1
all fFile, t:Trash | f in t
-- div,2
all File in Trash
no Trash'
-- div,1
no some f:File | f not in Trash
-- div,1
File = Trash + Protected
no Protected | all Trash
-- div,1
