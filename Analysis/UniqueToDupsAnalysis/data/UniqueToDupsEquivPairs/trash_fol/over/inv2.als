-- equiv pair start,13
no File
-- div,7
all f:File | f not in File
-- div,4
all t : File | t not in Trash and
Trash' = Trash + t and
File' = File and
Protected' = Protected
-- div,1
all t : File | t not in Trash and
Trash' = Trash + t
File' = File
Protected' = Protected
-- div,1
-- equiv pair end
