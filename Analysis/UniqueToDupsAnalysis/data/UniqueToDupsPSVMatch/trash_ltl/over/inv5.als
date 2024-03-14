some File
no File'
-- div,1
eventually #File' < #File
-- div,2
some f:File | f not in File
-- div,1
some File eventually no File
-- div,2
some f:File | eventually no f
-- div,3
always eventually #File' < #File
-- div,1
some f: File | after f not in File
-- div,1
some File after eventually no File
-- div,1
some f : File | File' = File - f
-- div,1
some File eventually File not in File'
-- div,2
always (some f:File | f not in File')
-- div,1
eventually some f:File | f not in File
-- div,18
some f: File | eventually (f not in univ)
-- div,1
some f:File |eventually f not in File
-- div,27
some t: Trash | eventually (t not in File)
-- div,1
some f : Trash | eventually f not in File
-- div,2
eventually some f:Trash | f not in Trash
-- div,1
eventually (some File and #File' < #File)
-- div,1
some f : File | eventually f not in File'
-- div,3
eventually (
File != File' and
File' in File
)
-- div,1
eventually some f:File | no f & File
-- div,1
some f:File | eventually no f&File
-- div,2
eventually (File' in File and File != File')
-- div,1
eventually (File' in File and File not in File')
-- div,1
eventually some f : Trash| f not in File'
-- div,3
some t : Trash | once t in (File - Trash)
-- div,1
always some f : File | File' = File - f
-- div,1
some f : File | (f in File until f not in File)
-- div,1
some f: File | eventually File = File - f
-- div,3
some f : File | eventually after f not in File
-- div,1
some f : File | always eventually f not in File
-- div,1
always some f: File | eventually f not in File
-- div,7
some f: File | eventually always f not in File
-- div,2
some f:File | eventually File' = File-f
-- div,9
always some f : Trash | eventually f not in File
-- div,2
eventually (some f:File | File'= File-f)
-- div,12
some f:Trash | eventually File' = File-f
-- div,3
always some f : File | eventually f not in File'
-- div,1
always (some f:File | eventually no f&File)
-- div,1
some t : Trash | historically t in (File - Trash)
-- div,1
some f: File | eventually (always File = File - f)
-- div,1
some f : File | always (f in File until f not in File)
-- div,1
some f:File | f in File implies eventually f not in File
-- div,1
always some f : Trash | f in File until f not in File
-- div,1
some f : Trash | f in File until always f not in File
-- div,1
eventually (some f:File | f in File implies f not in File)
-- div,1
some f : File | eventually f in Trash and f not in File
-- div,1
some f : File| f not in Trash and eventually f not in File
-- div,1
eventually some f : File| f in Trash and f not in File'
-- div,1
eventually some f:File | eventually File' = File - f
-- div,1
some f: File | eventually (f not in (File + Trash + Protected))
-- div,1
some f : File | eventually f not in (File + Protected + Trash)
-- div,1
some f : Trash | eventually f not in (File + Protected + Trash)
-- div,1
some f : File | always f in File and eventually f not in File
-- div,1
always some f : Trash | f in File until always f not in File
-- div,1
eventually some f : File| f in Trash and File' = File - f
-- div,1
some f : File | eventually f in File => eventually f not in File
-- div,1
some f : File | eventually f in File and eventually f not in File
-- div,1
eventually some f:File | f not in Protected and File' = File -f
-- div,1
some f: File | eventually always f in Trash and eventually f not in File
-- div,1
some f: File | eventually f in Trash and eventually always f not in File
-- div,2
eventually some f : Trash| File' = File - f and Trash' = Trash - f
-- div,1
eventually some f : File| f in Trash and File' = File - f and Trash' = Trash - f
-- div,1
