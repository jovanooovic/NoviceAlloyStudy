Protected + Trash = File
-- div,1
Trash + Protected = File
-- div,2
File = Trash + Protected
-- div,2
File = Protected + Trash
-- div,11
File-Protected in Trash
-- div,79
no ((File-Protected)-Trash)
-- div,3
Trash = File - (Protected - Trash)
-- div,2
all f:File-Protected | f in Trash
-- div,8
all np: File-Protected| np in Trash
-- div,3
all f: File | f in Trash or f in Protected
-- div,1
all f: File| f in Protected or f in Trash
-- div,1
all v : File | v not in Protected implies v in Trash
-- div,1
all f : File | f !in Protected => f in Trash
-- div,34
all w : File | w not in Protected implies w in Trash
-- div,1
all f:File | not f in Protected => f in Trash
-- div,2
all file: File |
file not in Protected implies file in Trash
-- div,2
all f : univ | f in File and f not in Protected implies f in Trash
-- div,1
all f : File | f not in Protected implies f in Trash

(File - Protected) in Trash
-- div,2
