Trash =
-- div,2
Trash \ Protected
-- div,1
some i in Protected
-- div,1
Protected = no Trash
-- div,4
Protect not in Trash
-- div,1
Protected no-> Trash
-- div,1
no Protected & Trasj
-- div,1
Protected -> no Trash
-- div,1
Protected not in Trash

/* All unprotected files are deleted.. */
-- div,1
Potected not in Trash
-- div,1
Protected no in Trash
-- div,5
not Protected in Trash
}

run {inv4 and inv4o
}

pred inv4{
not Protected in Trash
}

run {inv4 and inv4o
-- div,1
File = Prepared - Trash
-- div,1
(Protected  not in Trash
-- div,1
never Protected in Trash
-- div,1
all Protected | not Trash
-- div,1
Protected & Trash = empty
-- div,1
all Protected not in Trash
-- div,1
i in Protected
i not in Trash
-- div,1
i in Protected -> i not in Trash
-- div,1
not some f:Protected : f in Trash
-- div,1
File = Protected
no Trash

/* All unprotected files are deleted.. */
-- div,1
all f: File | f in Protected xor f in File
-- div,1
all f : File | f.protected and not f.Trash
-- div,1
i = Protected
i in Protected
i not in Trash
-- div,1
none f:File :  f in Protected && f in Trash
-- div,1
all f : File | f = Protected | f not in Trash
-- div,1
all f:File | f in protected => f not in Trash
-- div,1
all f : File | f = Protected - Trash

/* All unprotected files are deleted.. */
-- div,1
(all f : File | f in Protected implies not in Trash)
-- div,2
all f: Files | f.link in Protected => f.link !in Trash
-- div,1
all p : Protected |
p in Protected implies (p notin Trash)
-- div,1
some f:File | one t:Trash | t -> f implies not in Protected
-- div,1
all f : File | f = Protected & f not in Trash

/* All unprotected files are deleted.. */
-- div,1
all f : File | f in Protected & f not in Trash

/* All unprotected files are deleted.. */
-- div,1
(all f : File | f in Protected & f not in Trash)

/* All unprotected files are deleted.. */
-- div,1
