File = Protected + Trash
-- div,1
File-Protected in Trash
-- div,31
(File - (File & Protected)) in Trash
-- div,1
all f:(File-Protected) | f in Trash
-- div,16
all u: File - Protected | u in Trash
-- div,1
(File - Protected) & Trash = (File - Protected)
-- div,1
all f : File | f in Protected or f in Trash
-- div,1
all f: File | f not in Protected => f in Trash
-- div,112
all f:File | f not in Trash implies f in Protected
-- div,1
all x: File | x not in Protected implies x in Trash
-- div,9
all w : File | w not in Protected implies w in Trash
-- div,1
all f:File | not f in Protected => f in Trash
-- div,6
all f : File {
always(f not in Protected implies f in Trash)
}
-- div,3
not some f : File | not f in Protected and not f in Trash
-- div,1
all bruh : File | ((bruh not in Protected) implies (bruh in Trash))
-- div,1
all f: File - Protected | one t : Trash | f in t
-- div,2
all f : File | f in Protected or (f in Trash and f not in Protected)
-- div,1
