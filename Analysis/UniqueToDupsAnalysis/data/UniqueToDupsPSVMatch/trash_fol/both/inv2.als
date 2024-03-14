Trash = none
-- div,1
no File.link
-- div,1
no File-Protected
-- div,1
no Trash && no Protected
-- div,2
all t : Trash | Trash = 0
-- div,1
all t:Trash | t not in File
-- div,1
some f : File | f in Trash
-- div,1
all f:Trash | f not in File
-- div,1
all Trash :File|File in Trash
-- div,1
all f:File, t:Trash | f in t
-- div,1
all f:File | all t:Trash | f in t
-- div,1
all Trash :File|File in Trash and File not in Protected
-- div,1
