File = Trash
-- div,28
Trash = File
-- div,14
File in Trash
-- div,69
no File-Trash
-- div,14
File & Trash = File
-- div,1
eventually File in Trash
-- div,1
all x: File | x in Trash
-- div,2
all f:File| f in Trash
-- div,32
not some f:File | f not in Trash
-- div,1
all f:File | one t:Trash | f in t
-- div,1
all f : File | f in Trash



File in Trash
-- div,1
all f:File | some t:Trash | f in t
-- div,1
