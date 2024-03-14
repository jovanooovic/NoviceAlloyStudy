no Trash
-- div,109
Trash = none
-- div,2
Trash in none
-- div,3
File & Trash = none
-- div,3
all t : Trash | no t
-- div,2
no f:File| f in Trash
-- div,15
all t : Trash | t = none
-- div,1
all w : File | w not in Trash
-- div,1
all f:File|f not in Trash
-- div,175
all t : File | t not in Trash
-- div,10
all t : univ | t not in Trash
-- div,1
all t:Trash | t not in File
-- div,5
all x: File | x not in Trash
-- div,23
all f:File | not f in Trash
-- div,5
not some f:File | f in Trash
-- div,42
all bruh : File | bruh not in Trash
-- div,1
all file: File | file not in Trash
-- div,6
all f:File, t:Trash | f not in t
-- div,2
no Trash
all f:File | f not in Trash
-- div,1
