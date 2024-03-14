File in Trash
-- div,1
File = Protected
-- div,1
no File - Protected
-- div,1
Trash = File - Protected
-- div,18
File - Protected = Trash
-- div,19
File = Protected - Trash
-- div,1
File = Trash - Protected
-- div,5
Trash = File
no Protected
-- div,3
File in Trash
no Protected
-- div,1
File & Trash = File - Protected
-- div,1
File not in Protected => File in Trash
-- div,3
no (Protected & Trash) and File in Trash
-- div,1
File in Trash
no Protected & Trash
-- div,1
Trash = File + Protected
no Protected
-- div,2
Trash = File - Protected
no Protected
-- div,1
File = Trash + Protected
no Protected
-- div,2
all f : File | f = Trash - Protected
-- div,1
File = Protected + Trash
no Protected & Trash
-- div,2
File - Protected = Trash
no Trash & Protected
-- div,5
all f: File | f in Protected and f in Trash
-- div,1
all f: File | f in Protected and f !in Trash
-- div,1
all f: File| f in Trash and f not in Protected
-- div,3
all f: File | f !in Protected and f in Trash
-- div,2
all f: File | f in Trash <=> f !in Protected
-- div,2
no (Protected & Trash) and (File.link + File)  in Trash
-- div,1
File - Protected = Trash and
no (Trash & Protected)
no link
-- div,1
all f: File | f in Protected => f !in Trash else f in Trash
-- div,1
all p: Protected | p !in Trash
all f: File | f in Trash
-- div,1
all f:File - Protected | f in Trash
no f:Protected | f in Trash
-- div,2
