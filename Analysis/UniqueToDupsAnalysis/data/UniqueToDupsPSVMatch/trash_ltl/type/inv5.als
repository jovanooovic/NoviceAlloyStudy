eventually File after no File
-- div,2
eventually no (File && File')
-- div,1
eventually some File in Trash
-- div,2
some f:Trash | eventually File
-- div,4
some f:File | eventually File-f
-- div,1
some f:Trash | eventually File-f
-- div,1
eventually some File not in File
-- div,1
after no (eventually some Trash)
-- div,1
eventually some Trash not in File
-- div,2
eventually some (no Trash + File)
-- div,1
some f: File | after no f in File
-- div,1
eventually (some f:File | File'-f)
-- div,1
eventually ( some File' in Trash')
-- div,1
eventually some (Trash and no File)
-- div,1
eventually some (Trash not in File)
-- div,1
some f: File | f eventually no File
-- div,1
some f:File | eventually no f in File
-- div,1
all f:File | eventually (not f & File)
-- div,1
some f: File | eventually no f in File
-- div,2
some f : File | eventually no f in File
-- div,1
all f:File|eventually f after f in Trash
-- div,2
eventually some File
after some (no File)
-- div,1
some f: File | eventually (always no f in File)
-- div,1
some f: File | eventually (always no f in Trash)
-- div,1
some f : File | eventually some File' = File - f
-- div,1
some f: File | always no f in File since eventually f in Trash
-- div,1
some f: File | eventually no f in Trash and always no f in File
-- div,1
some f: File | always no f in File since eventually no f in Trash
-- div,1
some f: File | eventually no f in Trash implies always no f in File
-- div,1
some f: File | eventually (always no f in Trash implies no f in File)
-- div,1
some f: File | eventually (always no f in Trash implies always no f in File)
-- div,1
