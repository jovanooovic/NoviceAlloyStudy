some Trash
-- div,1
no Protected
-- div,3
no Trash & File
-- div,2
no File & Trash
-- div,2
Trash = File.link
-- div,1
no File-Protected
-- div,2
all f: Trash | f = File
-- div,1
all f: File | f not in Trash
-- div,1
all f: File | no Protected
-- div,1
all x: File | x in Protected
-- div,1
all f:File, t:Trash | f in t
-- div,2
