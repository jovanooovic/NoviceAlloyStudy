no Trash
-- div,201
Trash=none
-- div,19
Trash in none
-- div,3
always no Trash
-- div,2
all f: File | no Trash
-- div,1
no f:File | f in Trash
-- div,14
all t:Trash | t in none
-- div,2
all f:File | f not in Trash
-- div,14
all t : univ | t not in Trash
-- div,1
all t : Trash | t not in univ
-- div,3
all f:File | not f in Trash
-- div,2
all f: File | no f&Trash
-- div,2
not some f:File | f in Trash
-- div,2
all f:File, t:Trash | f not in t
-- div,1
all f : File | f not in Trash


no Trash
-- div,1
all t : Trash | no f : File | f in t
-- div,1
all files : File | files in Trash => no files
-- div,1
all files : univ | files in Trash implies no files
-- div,2
all files : Trash | files in Trash => no files
-- div,1
