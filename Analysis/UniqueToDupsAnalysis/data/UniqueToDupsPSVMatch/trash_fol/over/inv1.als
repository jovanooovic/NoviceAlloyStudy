no File
-- div,1
all t: File | no t
-- div,2
no Trash
all f:File | f in Trash
-- div,1
all f:File | f not in Trash and f in Trash
-- div,1
all w : File | w not in Trash and w in Protected
-- div,1
all f:File | some t: Trash | not t in Trash
-- div,1
