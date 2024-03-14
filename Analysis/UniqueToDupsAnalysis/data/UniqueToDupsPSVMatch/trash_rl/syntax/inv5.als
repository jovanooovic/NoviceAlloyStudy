}
-- div,3
no
-- div,1
all v : File
-- div,3
$Protected in Trash
-- div,1
Protected = no Trash
-- div,1
no Trash x Protected
-- div,1
Trash = no Protected
-- div,2
si Trash - Protected
-- div,1
Trash & no Protected
-- div,1
no Files - Protected
-- div,1
Unprotected in Trash
-- div,1
(File & no Protected)
-- div,2
all Trash & Protected
-- div,1
all Trash - Protected
-- div,1
all (~Protected&Trash)
-- div,1
(File & not Protected)
-- div,1
File\Unprotect in Trash
-- div,1
no no Trash - Protected
-- div,1
Trash = Protcted - File
-- div,1
File-Unprotect in Trash
-- div,1
File/Protected in Trash
-- div,1
(File\Protected) & Trash
-- div,1
all Trash & no Protected
-- div,1
Trahs = File - Protected
-- div,1
(File/Protected)	& Trash
-- div,1
Trash = File / Protected
-- div,1
File | Protected & Trash
-- div,1
(File\Protected)	& Trash
-- div,1
File : Protected & Trash
-- div,1
Files = Protected + Trash
-- div,2
File/Unprotected in Trash
-- div,1
inv5o
}

pred inv5{
inv5o
-- div,1
File \ Protected in Trash
-- div,1
(File\Protected) in Trash
-- div,1
(File/Protected) in Trash
-- div,1
all not Protected = Trash
-- div,1
Trash = Files - Protected
-- div,1
Files - Protected in Trash
-- div,1
(File / Protected) & Trash
-- div,1
(not in Protected) & Trash
-- div,1
no Trash :> TrProtectedash
-- div,1
(File \ Protected) & Trash
-- div,1
(not in Protected) = Trash
-- div,1
(File \ Protected)	& Trash
-- div,1
(File / Pretected) in Trash
-- div,1
(Files - Protected) = Trash
-- div,1
File & Trash & no Protected
-- div,1
no Protected | File = Trash
-- div,1
File = no Protected & Trash
-- div,1
(File \ Protected) in Trash
-- div,4
(not in Protected) in Trash
-- div,1
File = Trash & no Protected
-- div,1
Trash = no File - Protected
-- div,1
File & Trash = no Protected
-- div,1
(File / Protected) in Trash
-- div,2
File in Trash
no Proteected
-- div,1
all Trash = File - Protected
-- div,1
File & no Protected in Trash
-- div,2
all ((File-Protected)&Trash)
-- div,1
(Files - Protected) in Trash
-- div,1
File / not Protected in Trash
-- div,1
File \ not Protected in Trash
-- div,2
File & not Protected in Trash
-- div,1
/not Protected & File in Trash
-- div,1
(File & no Protected) in Trash
-- div,4
(File & no Preotected) in Trash
-- div,1
all (File - Protected) in Trash
-- div,1
(File & not Protected) in Trash
-- div,2
(File & not Preotected) in Trash
-- div,1
Trash = no Protected
File = Trash
-- div,1
none f:Protected | f not in Trash
-- div,1
(File & not in Protected) in Trash
-- div,1
all f:not in Protected | f in Trash
-- div,1
all f:File/Unprotected | f in Trash
-- div,1
all f:File\Unprotected | f in Trash
-- div,1
File not in Protected => f in Trash
-- div,1
all f:File | no not Protected & Trash
-- div,1
File not in Protected implies F in Trash
-- div,1
all f:File | f not Protected | f in Trash
-- div,1
all f: File| f not in Protected | f in Trash
-- div,1
all f: File, f not in Protected | f in Trash
-- div,1
all f:Files | all p:Protected | (f-p) in Trash
-- div,1
all f:File | (f not Protected) implies f in Trash
-- div,1
all v : File | u not in Protected implies v in Trash
-- div,1
all p, f: Protected, File | p !in Trash | (f - p) in Trash
-- div,1
