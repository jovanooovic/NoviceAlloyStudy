Trash
-- div,2
~ Trash
-- div,1
not Trash
-- div,1
Trash = {}
-- div,3
none Trash
-- div,1
Trash' = {}
-- div,1
Trash = {{}}
-- div,1
Trash t = {}
-- div,3
Trash is empty
-- div,1
~(File in Trash)
-- div,1
no Trash in File
-- div,2
no File in Trash
-- div,8
Trash.link in iden
-- div,1
all t : Trash | t = {}
-- div,1
all f : File | f & Trash
-- div,1
all f:File | f none Trash
-- div,1
not some f : File | Trash
-- div,1
all f:File | no f in Trash
-- div,3
all f : File | f not Trash
-- div,1
all t: File | no t in Trash
-- div,1
all f : File | f not it Trash
-- div,1
File x
x in File
x not in Trash
-- div,1
all f:File | some t: Trash | not t
-- div,1
all f : File, t : Trash | t->f not in File
-- div,1
